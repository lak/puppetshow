# Rapid Forms

 * [&lt;hidden-fields&gt;](#hidden-fields)
 * [&lt;form&gt;](#form)
 * [&lt;submit&gt;](#submit)
 * [&lt;input&gt;](#input)
 * [&lt;input for=`"text"`&gt;](#input--for-text)
 * [&lt;input for=`"boolean"`&gt;](#input--for-boolean)
 * [&lt;input for=`"password"`&gt;](#input--for-password)
 * [&lt;input for=`"html"`&gt;](#input--for-html)
 * [&lt;input for=`"date"`&gt;](#input--for-date)
 * [&lt;input for=`"datetime"`&gt;](#input--for-datetime)
 * [&lt;input for=`"integer"`&gt;](#input--for-integer)
 * [&lt;input for=`"float"`&gt;](#input--for-float)
 * [&lt;input for=`"string"`&gt;](#input--for-string)
 * [&lt;input for=`"big_integer"`&gt;](#input--for-big_integer)
 * [&lt;input for=`"HoboFields::EnumString"`&gt;](#input--for-HoboFields::EnumString)
 * [&lt;remote-method-button&gt;](#remote-method-button)
 * [&lt;update-button&gt;](#update-button)
 * [&lt;delete-button&gt;](#delete-button)
 * [&lt;create-button&gt;](#create-button)
 * [&lt;select-one&gt;](#select-one)
 * [&lt;name-one&gt;](#name-one)
 * [&lt;sti-type-input&gt;](#sti-type-input)
 * [&lt;select-input&gt;](#select-input)
 * [&lt;error-messages&gt;](#error-messages)
 * [&lt;select-many&gt;](#select-many)
 * [&lt;after-submit&gt;](#after-submit)
 * [&lt;hidden-field&gt;](#hidden-field)
 * [&lt;select-menu&gt;](#select-menu)


---

<a name="hidden-fields">&nbsp;</a>
##  &lt;hidden-fields&gt;



### Attributes 

 * fields
 * skip
 * for-query-string


### Parameters 

None


---

<a name="form">&nbsp;</a>
##  &lt;form&gt;



### Attributes 

 * update
 * hidden-fields
 * action
 * method
 * web-method


### Parameters 

None


---

<a name="submit">&nbsp;</a>
##  &lt;submit&gt;



### Attributes (merged with [&lt;input&gt;](#input))

 * label
 * image


### Parameters 

None


---

<a name="input">&nbsp;</a>
##  &lt;input&gt;



### Attributes 

None

### Parameters 

None


---

<a name="input--for-text">&nbsp;</a>
##  &lt;input for=`"text"`&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="input--for-boolean">&nbsp;</a>
##  &lt;input for=`"boolean"`&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="input--for-password">&nbsp;</a>
##  &lt;input for=`"password"`&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="input--for-html">&nbsp;</a>
##  &lt;input for=`"html"`&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="input--for-date">&nbsp;</a>
##  &lt;input for=`"date"`&gt;



### Attributes 

 * order


### Parameters 

None


---

<a name="input--for-datetime">&nbsp;</a>
##  &lt;input for=`"datetime"`&gt;



### Attributes 

 * order


### Parameters 

None


---

<a name="input--for-integer">&nbsp;</a>
##  &lt;input for=`"integer"`&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="input--for-float">&nbsp;</a>
##  &lt;input for=`"float"`&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="input--for-string">&nbsp;</a>
##  &lt;input for=`"string"`&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="input--for-big_integer">&nbsp;</a>
##  &lt;input for=`"big_integer"`&gt;



### Attributes 

 * name


### Parameters 

None


---

<a name="input--for-HoboFields::EnumString">&nbsp;</a>
##  &lt;input for=`"HoboFields::EnumString"`&gt;



### Attributes (merged with [&lt;select&gt;](#select))

 * labels
 * titleize


### Parameters 

None


---

<a name="remote-method-button">&nbsp;</a>
##  &lt;remote-method-button&gt;



### Attributes 

 * method
 * update
 * label


### Parameters 

None


---

<a name="update-button">&nbsp;</a>
##  &lt;update-button&gt;



### Attributes 

 * label
 * update
 * fields
 * params


### Parameters 

None


---

<a name="delete-button">&nbsp;</a>
##  &lt;delete-button&gt;



### Attributes 

 * label
 * update
 * in-place
 * image
 * confirm
 * fade
 * subsite


### Parameters 

None


---

<a name="create-button">&nbsp;</a>
##  &lt;create-button&gt;



### Attributes 

 * model
 * update
 * label
 * fields
 * message


### Parameters 

None


---

<a name="select-one">&nbsp;</a>
##  &lt;select-one&gt;



### Attributes (merged with [&lt;select&gt;](#select))

 * include-none
 * blank-message
 * options
 * sort


### Parameters 

None


---

<a name="name-one">&nbsp;</a>
##  &lt;name-one&gt;



### Attributes (merged with [&lt;input&gt;](#input))

 * complete-target
 * completer


### Parameters 

None


---

<a name="sti-type-input">&nbsp;</a>
##  &lt;sti-type-input&gt;



### Attributes 

None

### Parameters 

None


---

<a name="select-input">&nbsp;</a>
##  &lt;select-input&gt;



### Attributes 

None

### Parameters 

<ul><li>&lt;default:&gt; (&lt;do&gt;)
</li>
</ul>


---

<a name="error-messages">&nbsp;</a>
##  &lt;error-messages&gt;



### Attributes (merged with [&lt;section&gt;](#section))

None

### Parameters 

<ul><li>&lt;heading:&gt; (&lt;h2&gt;)
</li>
<li>&lt;errors.full_messages:&gt;
<ul><li>&lt;li:&gt;
</li>
</ul></li>
</ul>


---

<a name="select-many">&nbsp;</a>
##  &lt;select-many&gt;



### Attributes (merged with [&lt;div&gt;](#div))

 * options
 * targets
 * remove-label
 * prompt


### Parameters 

<ul><li>&lt;proto-item:&gt; (&lt;div&gt;)
<ul><li>&lt;proto-hidden:&gt; (&lt;input&gt;)
</li>
<li>&lt;proto-remove-button:&gt; (&lt;input&gt;)
</li>
</ul></li>
<li>&lt;item:&gt; (&lt;div&gt;)
<ul><li>&lt;hidden:&gt; (&lt;input&gt;)
</li>
<li>&lt;remove-button:&gt; (&lt;input&gt;)
</li>
</ul></li>
</ul>


---

<a name="after-submit">&nbsp;</a>
##  &lt;after-submit&gt;



### Attributes 

 * uri
 * stay-here
 * go-back


### Parameters 

None


---

<a name="hidden-field">&nbsp;</a>
##  &lt;hidden-field&gt;



### Attributes (merged with [&lt;input&gt;](#input))

 * name
 * value


### Parameters 

None


---

<a name="select-menu">&nbsp;</a>
##  &lt;select-menu&gt;



### Attributes (merged with [&lt;select&gt;](#select))

 * options
 * selected
 * first-option
 * first-value


### Parameters 

<ul><li>&lt;default:&gt; (&lt;select&gt;)
<ul><li>&lt;options:&gt; (&lt;do&gt;)
</li>
</ul></li>
</ul>
