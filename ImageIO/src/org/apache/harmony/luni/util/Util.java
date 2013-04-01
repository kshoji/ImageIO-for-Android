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

package org.apache.harmony.luni.util;


import java.io.UTFDataFormatException;

import org.apache.harmony.luni.internal.nls.Messages;

public final class Util {
    public static String convertFromUTF8(byte[] buf, int offset, int utfSize)
			throws UTFDataFormatException {
		return convertUTF8WithBuf(buf, new char[utfSize], offset, utfSize);
	}

	public static String convertUTF8WithBuf(byte[] buf, char[] out, int offset,
			int utfSize) throws UTFDataFormatException {
		int count = 0, s = 0, a;
		while (count < utfSize) {
			if ((out[s] = (char) buf[offset + count++]) < '\u0080')
				s++;
			else if (((a = out[s]) & 0xe0) == 0xc0) {
				if (count >= utfSize)
					throw new UTFDataFormatException(Messages.getString("luni.D7",
							count));
				int b = buf[count++];
				if ((b & 0xC0) != 0x80)
					throw new UTFDataFormatException(Messages.getString("luni.D7",
							(count - 1)));
				out[s++] = (char) (((a & 0x1F) << 6) | (b & 0x3F));
			} else if ((a & 0xf0) == 0xe0) {
				if (count + 1 >= utfSize)
					throw new UTFDataFormatException(Messages.getString("luni.D8",
							(count + 1)));
				int b = buf[count++];
				int c = buf[count++];
				if (((b & 0xC0) != 0x80) || ((c & 0xC0) != 0x80))
					throw new UTFDataFormatException(Messages.getString("luni.D9",
							(count - 2)));
				out[s++] = (char) (((a & 0x0F) << 12) | ((b & 0x3F) << 6) | (c & 0x3F));
			} else {
				throw new UTFDataFormatException(Messages.getString("luni.DA",
						(count - 1)));
			}
		}
		return new String(out, 0, s);
	}
}
