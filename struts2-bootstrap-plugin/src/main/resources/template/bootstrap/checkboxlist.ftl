<#--
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
-->
<#assign hasFieldErrors = fieldErrors?? && fieldErrors[parameters.name]??/>
<#if (parameters.dynamicAttributes?? && parameters.dynamicAttributes?size > 0 && parameters.dynamicAttributes["formGroupCssClass"]??)><#rt/>
    <#assign formGroupCssClass = parameters.dynamicAttributes.remove("formGroupCssClass")/><#rt/>
<#else>
    <#assign formGroupCssClass ></#assign><#rt/>
</#if><#rt/>

<div class="form-group ${formGroupCssClass?html} <#rt/>
    <#if hasFieldErrors>
        has-error has-feedback<#t/>
    </#if>
    ${parameters.cssClass?default('')}" <#t/>
    <#if parameters.cssStyle??>
        style="${parameters.cssStyle}" <#t/>
    </#if>
>
    <#if parameters.label??>
        <label class="<@s.property value="#s2b_form_label_class" />" >
            <#if parameters.required?default(false) && parameters.requiredposition?default("right") != 'right'>
                <span class="required">*</span><#rt/>
            </#if>
            ${parameters.label}<#rt/>
            <#if parameters.required?default(false) && parameters.requiredposition?default("right") == 'right'>
                <span class="required">*</span> <#rt/>
            </#if>
            ${parameters.labelseparator?default("")}<#t/>
            <#include "/${parameters.templateDir}/bootstrap/tooltip.ftl" /><#lt/>
        </label>
    </#if>
    <div class="<@s.property value="#s2b_form_element_class" /> controls">
<#include "/${parameters.templateDir}/bootstrap/simple/checkboxlist.ftl" />
<#include "/${parameters.templateDir}/bootstrap/controlfooter.ftl" /><#nt/>
