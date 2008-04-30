# Rapid

 * [&lt;field-list&gt;](#field-list)
 * [&lt;item&gt;](#item)
 * [&lt;nil-view&gt;](#nil-view)
 * [&lt;ul&gt;](#ul)
 * [&lt;table&gt;](#table)
 * [&lt;image&gt;](#image)
 * [&lt;spinner&gt;](#spinner)
 * [&lt;hobo-rapid-javascripts&gt;](#hobo-rapid-javascripts)
 * [&lt;name&gt;](#name)
 * [&lt;type-name&gt;](#type-name)
 * [&lt;name-for-collection&gt;](#name-for-collection)
 * [&lt;a&gt;](#a)
 * [&lt;view&gt;](#view)
 * [&lt;belongs-to-view&gt;](#belongs-to-view)
 * [&lt;has-many-view&gt;](#has-many-view)
 * [&lt;view for=`"Date"`&gt;](#view--for-Date)
 * [&lt;view for=`"Time"`&gt;](#view--for-Time)
 * [&lt;view for=`"Numeric"`&gt;](#view--for-Numeric)
 * [&lt;view for=`"string"`&gt;](#view--for-string)
 * [&lt;view for=`"boolean"`&gt;](#view--for-boolean)
 * [&lt;view for=`"ActiveRecord::Base"`&gt;](#view--for-ActiveRecord::Base)
 * [&lt;count&gt;](#count)
 * [&lt;theme-stylesheet&gt;](#theme-stylesheet)
 * [&lt;has-many-table&gt;](#has-many-table)
 * [&lt;add-by-name&gt;](#add-by-name)
 * [&lt;you&gt;](#you)
 * [&lt;You&gt;](#You)
 * [&lt;your&gt;](#your)
 * [&lt;Your&gt;](#Your)
 * [&lt;live-search&gt;](#live-search)
 * [&lt;a-or-an&gt;](#a-or-an)
 * [&lt;A-or-An&gt;](#A-or-An)
 * [&lt;filter-menu&gt;](#filter-menu)
 * [&lt;comma-list&gt;](#comma-list)


---

<a name="field-list">&nbsp;</a>
##  &lt;field-list&gt;



### Attributes (merged with [&lt;labelled-item-list&gt;](#labelled-item-list))

 * tag


### Parameters 

<ul><li>(dynamic parameter) (&lt;item-label&gt;)
<ul><li>&lt;label:&gt; (&lt;do&gt;)
</li>
</ul></li>
<li>(dynamic parameter) (&lt;item-value&gt;)
<ul><li>&lt;view:&gt; (&lt;do&gt;)
<ul><li>(dynamic parameter) (&lt;call-tag&gt;)
</li>
</ul></li>
</ul></li>
</ul>


---

<a name="item">&nbsp;</a>
##  &lt;item&gt;



### Attributes 

None

### Parameters 

None


---

<a name="nil-view">&nbsp;</a>
##  &lt;nil-view&gt;



### Attributes 

None

### Parameters 

None


---

<a name="ul">&nbsp;</a>
##  &lt;ul&gt;



### Attributes (merged with [&lt;li&gt;](#li))

 * empty


### Parameters 

<ul><li>&lt;head:&gt; (&lt;do&gt;)
</li>
<li>&lt;li:&gt;
<ul><li>&lt;default:&gt; (&lt;do&gt;)
</li>
</ul></li>
<li>&lt;foot:&gt; (&lt;do&gt;)
</li>
</ul>


---

<a name="table">&nbsp;</a>
##  &lt;table&gt;



### Attributes (merged with [&lt;with-field-names&gt;](#with-field-names))

 * fields
 * field-tag
 * empty


### Parameters 

<ul><li>&lt;thead:&gt;
<ul><li>&lt;field-heading-row:&gt; (&lt;tr&gt;)
<ul><li>(dynamic parameter) (&lt;th&gt;)
</li>
</ul></li>
</ul></li>
<li>&lt;tr:&gt;
<ul><li>(dynamic parameter) (&lt;td&gt;)
</li>
<li>&lt;controls:&gt; (&lt;td&gt;)
<ul><li>&lt;edit-link:&gt; (&lt;a&gt;)
</li>
<li>&lt;delete-button:&gt;
</li>
</ul></li>
</ul></li>
<li>&lt;tfoot:&gt;
</li>
</ul>


---

<a name="image">&nbsp;</a>
##  &lt;image&gt;



### Attributes (merged with [&lt;img&gt;](#img))

 * src


### Parameters 

None


---

<a name="spinner">&nbsp;</a>
##  &lt;spinner&gt;



### Attributes (merged with [&lt;img&gt;](#img))

None

### Parameters 

None


---

<a name="hobo-rapid-javascripts">&nbsp;</a>
##  &lt;hobo-rapid-javascripts&gt;



### Attributes 

 * tiny-mce


### Parameters 

None


---

<a name="name">&nbsp;</a>
##  &lt;name&gt;



### Attributes 

None

### Parameters 

None


---

<a name="type-name">&nbsp;</a>
##  &lt;type-name&gt;



### Attributes 

 * type
 * plural
 * lowercase
 * dasherize


### Parameters 

None


---

<a name="name-for-collection">&nbsp;</a>
##  &lt;name-for-collection&gt;



### Attributes 

 * singular
 * lowercase


### Parameters 

None


---

<a name="a">&nbsp;</a>
##  &lt;a&gt;



### Attributes 

 * action
 * to
 * params
 * query-params
 * href
 * format
 * subsite


### Parameters 

None


---

<a name="view">&nbsp;</a>
##  &lt;view&gt;



### Attributes 

 * inline
 * block
 * if-blank
 * no-wrapper
 * truncate


### Parameters 

None


---

<a name="belongs-to-view">&nbsp;</a>
##  &lt;belongs-to-view&gt;



### Attributes (merged with [&lt;a&gt;](#a))

None

### Parameters 

None


---

<a name="has-many-view">&nbsp;</a>
##  &lt;has-many-view&gt;



### Attributes 

None

### Parameters 

None


---

<a name="view--for-Date">&nbsp;</a>
##  &lt;view for=`"Date"`&gt;



### Attributes 

 * format


### Parameters 

None


---

<a name="view--for-Time">&nbsp;</a>
##  &lt;view for=`"Time"`&gt;



### Attributes 

 * format


### Parameters 

None


---

<a name="view--for-Numeric">&nbsp;</a>
##  &lt;view for=`"Numeric"`&gt;



### Attributes 

 * format


### Parameters 

None


---

<a name="view--for-string">&nbsp;</a>
##  &lt;view for=`"string"`&gt;



### Attributes 

None

### Parameters 

None


---

<a name="view--for-boolean">&nbsp;</a>
##  &lt;view for=`"boolean"`&gt;



### Attributes 

None

### Parameters 

None


---

<a name="view--for-ActiveRecord::Base">&nbsp;</a>
##  &lt;view for=`"ActiveRecord::Base"`&gt;



### Attributes 

None

### Parameters 

None


---

<a name="count">&nbsp;</a>
##  &lt;count&gt;



### Attributes 

 * label
 * prefix
 * if-any
 * lowercase


### Parameters 

None


---

<a name="theme-stylesheet">&nbsp;</a>
##  &lt;theme-stylesheet&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="has-many-table">&nbsp;</a>
##  &lt;has-many-table&gt;



### Attributes (merged with [&lt;table-for&gt;](#table-for))

 * part-id
 * delete-buttons
 * headings
 * id


### Parameters 

<ul><li>&lt;default:&gt; (&lt;do&gt;)
</li>
</ul>


---

<a name="add-by-name">&nbsp;</a>
##  &lt;add-by-name&gt;



### Attributes 

 * action-name
 * add-text
 * update
 * part-id


### Parameters 

<ul><li>&lt;default:&gt; (&lt;do&gt;)
</li>
</ul>


---

<a name="you">&nbsp;</a>
##  &lt;you&gt;



### Attributes 

 * have
 * are
 * do
 * titleize


### Parameters 

<ul><li>&lt;default:&gt; (&lt;do&gt;)
</li>
</ul>


---

<a name="You">&nbsp;</a>
##  &lt;You&gt;



### Attributes (merged with [&lt;you&gt;](#you))

None

### Parameters (merged with [&lt;you&gt;](#you))

None


---

<a name="your">&nbsp;</a>
##  &lt;your&gt;



### Attributes 

None

### Parameters 

<ul><li>&lt;default:&gt; (&lt;do&gt;)
</li>
</ul>


---

<a name="Your">&nbsp;</a>
##  &lt;Your&gt;



### Attributes 

None

### Parameters 

<ul><li>&lt;default:&gt; (&lt;do&gt;)
</li>
</ul>


---

<a name="live-search">&nbsp;</a>
##  &lt;live-search&gt;



### Attributes 

None

### Parameters 

None


---

<a name="a-or-an">&nbsp;</a>
##  &lt;a-or-an&gt;



### Attributes 

 * word


### Parameters 

None


---

<a name="A-or-An">&nbsp;</a>
##  &lt;A-or-An&gt;



### Attributes 

 * word


### Parameters 

None


---

<a name="filter-menu">&nbsp;</a>
##  &lt;filter-menu&gt;



### Attributes 

 * param-name
 * options
 * no-filter


### Parameters (merged with [&lt;select-menu&gt;](#select-menu))

None


---

<a name="comma-list">&nbsp;</a>
##  &lt;comma-list&gt;



### Attributes 

 * separator


### Parameters 

None
