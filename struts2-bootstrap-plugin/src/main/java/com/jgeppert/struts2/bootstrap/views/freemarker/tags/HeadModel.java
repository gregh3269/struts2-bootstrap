/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package com.jgeppert.struts2.bootstrap.views.freemarker.tags;

import com.jgeppert.struts2.bootstrap.components.Head;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.struts2.components.Component;
import org.apache.struts2.util.ValueStack;
import org.apache.struts2.views.freemarker.tags.TagModel;

/**
 * The `HeadModel` class provides the model for the `Head` component in the
 * Bootstrap plugin. It initializes and returns the `Head` component for
 * rendering the head section of an HTML document with Bootstrap resources.
 *
 * @author <a href="https://www.jgeppert.com">Johannes Geppert</a>
 * @see Head
 * @see org.apache.struts2.util.ValueStack
 * @see jakarta.servlet.http.HttpServletRequest
 * @see jakarta.servlet.http.HttpServletResponse
 */
public class HeadModel extends TagModel {

    /**
     * Constructor for `HeadModel`.
     *
     * @param stack the value stack
     * @param req   the HTTP request
     * @param res   the HTTP response
     */
    public HeadModel(ValueStack stack, HttpServletRequest req, HttpServletResponse res) {
        super(stack, req, res);
    }

    /**
     * Returns the `Head` component for rendering the head section of an HTML document.
     *
     * @return the `Head` component
     */
    protected Component getBean() {
        return new Head(stack, req, res);
    }

}
