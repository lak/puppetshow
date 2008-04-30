# Rapid Pages

 * [&lt;base-page&gt;](#base-page)
 * [&lt;simple-layout&gt;](#simple-layout)
 * [&lt;aside-layout&gt;](#aside-layout)
 * [&lt;page&gt;](#page)
 * [&lt;index-page&gt;](#index-page)
 * [&lt;new-page&gt;](#new-page)
 * [&lt;show-page&gt;](#show-page)
 * [&lt;edit-page&gt;](#edit-page)
 * [&lt;new-in-collection-page&gt;](#new-in-collection-page)
 * [&lt;show-collection-page&gt;](#show-collection-page)
 * [&lt;permission-denied-page&gt;](#permission-denied-page)
 * [&lt;not-found-page&gt;](#not-found-page)
 * [&lt;doctype&gt;](#doctype)
 * [&lt;stylesheet&gt;](#stylesheet)
 * [&lt;javascript&gt;](#javascript)
 * [&lt;flash-message&gt;](#flash-message)
 * [&lt;ajax-progress&gt;](#ajax-progress)
 * [&lt;default-page-title&gt;](#default-page-title)
 * [&lt;with-primary-collection&gt;](#with-primary-collection)


---

<a name="base-page">&nbsp;</a>
##  &lt;base-page&gt;



### Attributes 

 * title
 * full-title
 * doctype


### Parameters 

<ul><li>&lt;doctype:&gt;
</li>
<li>&lt;head:&gt;
<ul><li>&lt;title:&gt;
</li>
<li>&lt;stylesheets:&gt; (&lt;do&gt;)
</li>
<li>&lt;scripts:&gt; (&lt;do&gt;)
<ul><li>&lt;javascript:&gt;
</li>
<li>&lt;fix-ie6:&gt; (&lt;do&gt;)
</li>
<li>&lt;hobo-rapid-javascripts:&gt;
</li>
</ul></li>
</ul></li>
<li>&lt;body:&gt;
</li>
</ul>


---

<a name="simple-layout">&nbsp;</a>
##  &lt;simple-layout&gt;



### Attributes (merged with [&lt;base-page&gt;](#base-page))

None

### Parameters (merged with [&lt;base-page&gt;](#base-page))

<ul><li>&lt;body:&gt;
<ul><li>&lt;header:&gt;
<ul><li>&lt;app-name:&gt; (&lt;heading&gt;)
</li>
<li>&lt;live-search:&gt;
</li>
<li>&lt;nav:&gt;
<ul><li>&lt;account-nav:&gt;
</li>
<li>&lt;main-nav:&gt;
</li>
</ul></li>
</ul></li>
<li>&lt;content:&gt; (&lt;section&gt;)
<ul><li>&lt;flash-message:&gt;
</li>
<li>&lt;flash-message:&gt;
</li>
<li>&lt;content-header:&gt; (&lt;header&gt;)
</li>
<li>&lt;content-body:&gt; (&lt;section&gt;)
</li>
<li>&lt;content-footer:&gt; (&lt;footer&gt;)
</li>
</ul></li>
<li>&lt;footer:&gt;
</li>
</ul></li>
</ul>


---

<a name="aside-layout">&nbsp;</a>
##  &lt;aside-layout&gt;



### Attributes (merged with [&lt;simple-layout&gt;](#simple-layout))

None

### Parameters (merged with [&lt;simple-layout&gt;](#simple-layout))

<ul><li>&lt;body:&gt;
</li>
<li>&lt;content:&gt;
<ul><li>&lt;main-content:&gt; (&lt;section&gt;)
</li>
<li>&lt;aside:&gt;
</li>
</ul></li>
</ul>


---

<a name="page">&nbsp;</a>
##  &lt;page&gt;



### Attributes (merged with [&lt;call-tag&gt;](#call-tag))

 * layout


### Parameters (merged with [&lt;call-tag&gt;](#call-tag))

None


---

<a name="index-page">&nbsp;</a>
##  &lt;index-page&gt;



### Attributes (merged with [&lt;page&gt;](#page))

None

### Parameters (merged with [&lt;page&gt;](#page))

<ul><li>&lt;body:&gt;
</li>
<li>&lt;content-header:&gt;
<ul><li>&lt;heading:&gt;
</li>
<li>&lt;count:&gt; (&lt;p&gt;)
</li>
</ul></li>
<li>&lt;content-body:&gt;
<ul><li>&lt;top-pagination-nav:&gt; (&lt;nav&gt;)
</li>
<li>&lt;collection:&gt;
</li>
<li>&lt;bottom-pagination-nav:&gt; (&lt;nav&gt;)
</li>
</ul></li>
<li>&lt;content-footer:&gt;
<ul><li>&lt;new-link:&gt; (&lt;a&gt;)
</li>
<li>&lt;new-field-list:&gt; (&lt;field-list&gt;)
</li>
</ul></li>
</ul>


---

<a name="new-page">&nbsp;</a>
##  &lt;new-page&gt;



### Attributes (merged with [&lt;page&gt;](#page))

None

### Parameters (merged with [&lt;page&gt;](#page))

<ul><li>&lt;body:&gt;
</li>
<li>&lt;content-header:&gt;
<ul><li>&lt;heading:&gt;
</li>
</ul></li>
<li>&lt;content-body:&gt;
<ul><li>&lt;error-messages:&gt;
</li>
<li>&lt;form:&gt;
<ul><li>&lt;field-list:&gt;
</li>
<li>&lt;actions:&gt; (&lt;div&gt;)
<ul><li>&lt;submit:&gt;
</li>
<li>&lt;back-link:&gt; (&lt;do&gt;)
</li>
</ul></li>
</ul></li>
</ul></li>
</ul>


---

<a name="show-page">&nbsp;</a>
##  &lt;show-page&gt;



### Attributes (merged with [&lt;page&gt;](#page))

 * primary-collection


### Parameters (merged with [&lt;page&gt;](#page))

<ul><li>&lt;body:&gt;
</li>
<li>&lt;content-header:&gt;
<ul><li>&lt;heading:&gt;
</li>
<li>&lt;creation-details:&gt;
</li>
<li>&lt;primary-collection-count:&gt; (&lt;do&gt;)
</li>
<li>&lt;edit-link:&gt; (&lt;a&gt;)
</li>
</ul></li>
<li>&lt;content-body:&gt;
<ul><li>&lt;primary-content:&gt;
</li>
<li>&lt;field-list:&gt;
</li>
<li>&lt;primary-collection-title:&gt; (&lt;h2&gt;)
</li>
<li>&lt;primary-collection:&gt; (&lt;do&gt;)
</li>
<li>&lt;primary-collection-add:&gt; (&lt;if&gt;)
<ul><li>&lt;primary-collection-field-list:&gt; (&lt;field-list&gt;)
</li>
</ul></li>
</ul></li>
<li>&lt;aside:&gt;
</li>
</ul>


---

<a name="edit-page">&nbsp;</a>
##  &lt;edit-page&gt;



### Attributes (merged with [&lt;page&gt;](#page))

None

### Parameters (merged with [&lt;page&gt;](#page))

<ul><li>&lt;body:&gt;
</li>
<li>&lt;content-header:&gt;
<ul><li>&lt;heading:&gt;
</li>
<li>&lt;delete-button:&gt;
</li>
</ul></li>
<li>&lt;content-body:&gt;
<ul><li>&lt;error-messages:&gt;
</li>
<li>&lt;form:&gt;
<ul><li>&lt;field-list:&gt;
</li>
<li>&lt;actions:&gt; (&lt;div&gt;)
<ul><li>&lt;submit:&gt;
</li>
<li>&lt;back-link:&gt; (&lt;do&gt;)
</li>
</ul></li>
</ul></li>
</ul></li>
</ul>


---

<a name="new-in-collection-page">&nbsp;</a>
##  &lt;new-in-collection-page&gt;



### Attributes (merged with [&lt;page&gt;](#page))

None

### Parameters (merged with [&lt;page&gt;](#page))

<ul><li>&lt;body:&gt;
</li>
<li>&lt;content-header:&gt;
<ul><li>&lt;heading:&gt;
</li>
<li>&lt;sub-heading:&gt;
</li>
</ul></li>
<li>&lt;content-body:&gt;
<ul><li>&lt;form:&gt;
<ul><li>&lt;field-list:&gt;
</li>
<li>&lt;actions:&gt; (&lt;div&gt;)
<ul><li>&lt;submit:&gt;
</li>
<li>&lt;back-link:&gt; (&lt;do&gt;)
</li>
</ul></li>
</ul></li>
</ul></li>
</ul>


---

<a name="show-collection-page">&nbsp;</a>
##  &lt;show-collection-page&gt;



### Attributes (merged with [&lt;page&gt;](#page))

None

### Parameters (merged with [&lt;page&gt;](#page))

<ul><li>&lt;body:&gt;
</li>
<li>&lt;content-header:&gt;
</li>
<li>&lt;content-body:&gt;
<ul><li>&lt;top-pagination-nav:&gt; (&lt;nav&gt;)
</li>
<li>&lt;bottom-pagination-nav:&gt; (&lt;nav&gt;)
<ul><li>&lt;page-nav:&gt;
</li>
</ul></li>
<li>&lt;new-link:&gt; (&lt;nav&gt;)
</li>
</ul></li>
</ul>


---

<a name="permission-denied-page">&nbsp;</a>
##  &lt;permission-denied-page&gt;



### Attributes (merged with [&lt;page&gt;](#page))

 * message


### Parameters (merged with [&lt;page&gt;](#page))

<ul><li>&lt;content-header:&gt;
<ul><li>&lt;heading:&gt;
</li>
</ul></li>
</ul>


---

<a name="not-found-page">&nbsp;</a>
##  &lt;not-found-page&gt;



### Attributes (merged with [&lt;page&gt;](#page))

 * message


### Parameters (merged with [&lt;page&gt;](#page))

<ul><li>&lt;content-header:&gt;
<ul><li>&lt;heading:&gt;
</li>
</ul></li>
</ul>


---

<a name="doctype">&nbsp;</a>
##  &lt;doctype&gt;



### Attributes 

 * version


### Parameters 

None


---

<a name="stylesheet">&nbsp;</a>
##  &lt;stylesheet&gt;



### Attributes 

 * name
 * media


### Parameters 

None


---

<a name="javascript">&nbsp;</a>
##  &lt;javascript&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="flash-message">&nbsp;</a>
##  &lt;flash-message&gt;



### Attributes (merged with [&lt;div&gt;](#div))

 * type


### Parameters 

None


---

<a name="ajax-progress">&nbsp;</a>
##  &lt;ajax-progress&gt;



### Attributes 

None

### Parameters 

None


---

<a name="default-page-title">&nbsp;</a>
##  &lt;default-page-title&gt;



### Attributes 

None

### Parameters 

None


---

<a name="with-primary-collection">&nbsp;</a>
##  &lt;with-primary-collection&gt;



### Attributes 

 * name


### Parameters 

<ul><li>&lt;default:&gt; (&lt;do&gt;)
</li>
<li>&lt;default:&gt; (&lt;do&gt;)
</li>
</ul>
