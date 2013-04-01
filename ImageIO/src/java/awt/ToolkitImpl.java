/*
 *  Licensed to the Apache Software Foundation (ASF) under one or more
 *  contributor license agreements.  See the NOTICE file distributed with
 *  this work for additional information regarding copyright ownership.
 *  The ASF licenses this file to You under the Apache License, Version 2.0
 *  (the "License"); you may not use this file except in compliance with
 *  the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

package java.awt;

import java.awt.image.ImageProducer;
import java.io.Serializable;
import java.util.Hashtable;

import org.apache.harmony.awt.gl.font.FontMetricsImpl;
import org.apache.harmony.awt.gl.image.OffscreenImage;

class ToolkitImpl extends Toolkit {
    static final Hashtable<Serializable, Image> imageCache = new Hashtable<Serializable, Image>();

    static final FontMetrics cacheFM[] =  new FontMetrics[10];


    @Override
    public Image createImage(ImageProducer producer) {
        lockAWT();
        try {
            return new OffscreenImage(producer);
        } finally {
            unlockAWT();
        }
    }
    
    /**
     * Returns FontMetrics object that keeps metrics of the specified font.
     * 
     * @param font specified Font
     * @return FontMetrics object corresponding to the specified Font object
     */
    @Override
    @Deprecated
    public FontMetrics getFontMetrics(Font font) {
        lockAWT();
        try {
            FontMetrics fm;
            for (FontMetrics element : cacheFM) {
                fm = element;
                if (fm == null){
                    break;
                }

                if (fm.getFont().equals(font)){
                    return fm;
                }
            }
            fm = new FontMetricsImpl(font);

            System.arraycopy(cacheFM, 0, cacheFM, 1, cacheFM.length -1);
            cacheFM[0] = fm;

            return fm;

//            return getGraphicsFactory().getFontMetrics(font);
        } finally {
            unlockAWT();
        }
    }

}
