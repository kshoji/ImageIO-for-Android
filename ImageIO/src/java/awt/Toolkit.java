package java.awt;

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

import java.awt.image.ImageProducer;

import org.apache.harmony.awt.wtk.GraphicsFactory;
import org.apache.harmony.awt.wtk.ShutdownWatchdog;
import org.apache.harmony.awt.wtk.WTK;

public abstract class Toolkit {
	private WTK wtk;
	
	void lockAWT() {

	}

	void unlockAWT() {

	}

	public static Toolkit getDefaultToolkit() {
		return new HeadlessToolkit();
	}

	public abstract Image createImage(ImageProducer producer);
	
	public WTK getWTK() {
		return wtk;
	}

    GraphicsFactory getGraphicsFactory() {
        return wtk.getGraphicsFactory();
    }

    private WTK createWTK(String clsName) {
        WTK newWTK = null;
        try {
            newWTK = (WTK) Class.forName(clsName).newInstance();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return newWTK;
    }
    
    private static String getWTKClassName() {
        String packageBase = "org.apache.harmony.awt.wtk", lin = "linux"; //$NON-NLS-1$ //$NON-NLS-2$ 
        return packageBase + "." + lin + ".LinuxWTK"; //$NON-NLS-1$ //$NON-NLS-2$
    }
    
    final ShutdownWatchdog shutdownWatchdog = new ShutdownWatchdog();
    void init() {
        lockAWT();
        try {
            final String className = getWTKClassName();
            wtk = createWTK(className);
        } finally {
            unlockAWT();
        }
    }

    /**
     * @deprecated
     */
    @Deprecated
    public abstract FontMetrics getFontMetrics(Font font);
}
