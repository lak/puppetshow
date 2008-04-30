# Rapid Generics

 * [&lt;creation-details&gt;](#creation-details)
 * [&lt;primary-content&gt;](#primary-content)
 * [&lt;association-count&gt;](#association-count)
 * [&lt;base-card&gt;](#base-card)
 * [&lt;card&gt;](#card)
 * [&lt;search-card&gt;](#search-card)
 * [&lt;collection&gt;](#collection)
 * [&lt;base-collection&gt;](#base-collection)
 * [&lt;collection-preview&gt;](#collection-preview)


---

<a name="creation-details">&nbsp;</a>
##  &lt;creation-details&gt;



### Attributes 

None

### Parameters 

<ul><li>&lt;by:&gt; (&lt;view&gt;)
</li>
<li>&lt;at:&gt; (&lt;created_at&gt;)
</li>
</ul>


---

<a name="primary-content">&nbsp;</a>
##  &lt;primary-content&gt;



### Attributes (merged with [&lt;view&gt;](#view))

None

### Parameters (merged with [&lt;view&gt;](#view))

None


---

<a name="association-count">&nbsp;</a>
##  &lt;association-count&gt;



### Attributes (merged with [&lt;a&gt;](#a))

None

### Parameters (merged with [&lt;a&gt;](#a))

None


---

<a name="base-card">&nbsp;</a>
##  &lt;base-card&gt;



### Attributes (merged with [&lt;div&gt;](#div))

None

### Parameters 

<ul><li>&lt;edit-link:&gt; (&lt;a&gt;)
</li>
<li>&lt;delete-button:&gt;
</li>
<li>&lt;heading:&gt; (&lt;h3&gt;)
</li>
<li>&lt;content:&gt; (&lt;div&gt;)
</li>
<li>&lt;creation-details:&gt;
</li>
<li>&lt;counter:&gt; (&lt;do&gt;)
</li>
</ul>


---

<a name="card">&nbsp;</a>
##  &lt;card&gt;



### Attributes (merged with [&lt;base-card&gt;](#base-card))

None

### Parameters (merged with [&lt;base-card&gt;](#base-card))

None


---

<a name="search-card">&nbsp;</a>
##  &lt;search-card&gt;



### Attributes 

None

### Parameters 

None


---

<a name="collection">&nbsp;</a>
##  &lt;collection&gt;



### Attributes (merged with [&lt;base-collection&gt;](#base-collection))

None

### Parameters (merged with [&lt;base-collection&gt;](#base-collection))

<ul><li>&lt;empty-message:&gt; (&lt;p&gt;)
</li>
</ul>


---

<a name="base-collection">&nbsp;</a>
##  &lt;base-collection&gt;



### Attributes (merged with [&lt;ul&gt;](#ul))

 * sortable
 * sortable-options


### Parameters 

<ul><li>&lt;li:&gt;
<ul><li>&lt;handle:&gt; (&lt;div&gt;)
</li>
<li>&lt;card:&gt;
</li>
</ul></li>
</ul>


---

<a name="collection-preview">&nbsp;</a>
##  &lt;collection-preview&gt;



### Attributes (merged with [&lt;div&gt;](#div))

 * limit
 * if-any


### Parameters (merged with [&lt;collection&gt;](#collection))

<ul><li>&lt;heading:&gt; (&lt;do&gt;)
</li>
<li>&lt;show-all-link:&gt; (&lt;span&gt;)
</li>
</ul>
