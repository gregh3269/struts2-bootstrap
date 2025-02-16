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
<#if (actionMessages?? && actionMessages?size > 0 && !attributes.isEmptyList)>
<div
    <#if attributes.id?has_content>
            id="${attributes.id}"<#rt/>
    </#if>
    <#if attributes.cssClass??>
            class="alert alert-info ${attributes.cssClass}"<#rt/>
    <#else>
            class="alert alert-info"<#rt/>
    </#if>
    <#if attributes.cssStyle??>
            style="${attributes.cssStyle}"<#rt/>
    </#if>
    role="alert">
    <#list actionMessages as message>
        <#if message?has_content>
            <p class="mb-0"><span class="bi bi-info-circle" style="float: left; margin-right: 0.3em;"></span>
                <span><#if attributes.escape>${message!}<#else>${message!}</#if></span></p>
        </#if>
    </#list>
</div>
</#if>
