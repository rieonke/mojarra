/*
 * Copyright (c) 1997, 2018 Oracle and/or its affiliates. All rights reserved.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License v. 2.0, which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * This Source Code may also be made available under the following Secondary
 * Licenses when the conditions for such availability set forth in the
 * Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
 * version 2 with the GNU Classpath Exception, which is available at
 * https://www.gnu.org/software/classpath/license.html.
 *
 * SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0
 */

package com.sun.faces.test.servlet30.customstatemanager;

import javax.faces.application.ApplicationFactory;
import javax.faces.application.Application;

public class NewApplicationFactory extends ApplicationFactory {

    public NewApplicationFactory() {
    }
    
    private ApplicationFactory oldFactory = null;

    private NewApplication newApp = null;
    
    public NewApplicationFactory(ApplicationFactory yourOldFactory) {
	oldFactory = yourOldFactory;
    }
    
    public Application getApplication() {
	if (null == newApp) {
	    newApp = new NewApplication(oldFactory.getApplication());
	}
	return newApp;
    }
    
    public void setApplication(Application application) {
	newApp = (NewApplication) application;
    }

    public String toString() {
	return "NewApplicationFactory";
    }

}
