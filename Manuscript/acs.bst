bplist00�_WebMainResource�	
_WebResourceMIMEType_WebResourceTextEncodingName_WebResourceFrameName^WebResourceURL_WebResourceDataYtext/htmlUutf-8P_file:///index.htmlO��<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="Content-Style-Type" content="text/css">
  <title></title>
  <meta name="Generator" content="Cocoa HTML Writer">
  <meta name="CocoaVersion" content="1265.2">
  <style type="text/css">
    p.p1 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Courier}
    p.p2 {margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px Courier; min-height: 14.0px}
    span.Apple-tab-span {white-space:pre}
  </style>
</head>
<body>
<p class="p1">% BibTeX standard bibliography style `ACS'</p>
<p class="p1"><span class="Apple-tab-span">	</span>% version 0.99a for BibTeX versions 0.99a or later, LaTeX version 2.09.</p>
<p class="p1"><span class="Apple-tab-span">	</span>% Copyright (C) 1985, all rights reserved.</p>
<p class="p1"><span class="Apple-tab-span">	</span>% Copying of this file is authorized only if either</p>
<p class="p1"><span class="Apple-tab-span">	</span>% (1) you make absolutely no changes to your copy, including name, or</p>
<p class="p1"><span class="Apple-tab-span">	</span>% (2) if you do make changes, you name it something other than</p>
<p class="p1"><span class="Apple-tab-span">	</span>% btxbst.doc, plain.bst, unsrt.bst, alpha.bst, and abbrv.bst.</p>
<p class="p1"><span class="Apple-tab-span">	</span>% This restriction helps ensure that all standard styles are identical.</p>
<p class="p1"><span class="Apple-tab-span">	</span>% The file btxbst.doc has the documentation for this style.</p>
<p class="p2"><br></p>
<p class="p1">ENTRY</p>
<p class="p1"><span class="Apple-converted-space">  </span>{ address</p>
<p class="p1"><span class="Apple-converted-space">    </span>author</p>
<p class="p1"><span class="Apple-converted-space">    </span>booktitle</p>
<p class="p1"><span class="Apple-converted-space">    </span>chapter</p>
<p class="p1"><span class="Apple-converted-space">    </span>edition</p>
<p class="p1"><span class="Apple-converted-space">    </span>editor</p>
<p class="p1"><span class="Apple-converted-space">    </span>howpublished</p>
<p class="p1"><span class="Apple-converted-space">    </span>institution</p>
<p class="p1"><span class="Apple-converted-space">    </span>journal</p>
<p class="p1"><span class="Apple-converted-space">    </span>key</p>
<p class="p1"><span class="Apple-converted-space">    </span>month</p>
<p class="p1"><span class="Apple-converted-space">    </span>note</p>
<p class="p1"><span class="Apple-converted-space">    </span>number</p>
<p class="p1"><span class="Apple-converted-space">    </span>organization</p>
<p class="p1"><span class="Apple-converted-space">    </span>pages</p>
<p class="p1"><span class="Apple-converted-space">    </span>publisher</p>
<p class="p1"><span class="Apple-converted-space">    </span>school</p>
<p class="p1"><span class="Apple-converted-space">    </span>series</p>
<p class="p1"><span class="Apple-converted-space">    </span>title</p>
<p class="p1"><span class="Apple-converted-space">    </span>type</p>
<p class="p1"><span class="Apple-converted-space">    </span>volume</p>
<p class="p1"><span class="Apple-converted-space">    </span>year</p>
<p class="p1"><span class="Apple-converted-space">  </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>{}</p>
<p class="p1"><span class="Apple-converted-space">  </span>{ label }</p>
<p class="p2"><br></p>
<p class="p1">INTEGERS { output.state before.all mid.sentence after.sentence after.block }</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {init.state.consts}</p>
<p class="p1">{ #0 'before.all :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>#1 'mid.sentence :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>#2 'after.sentence :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>#3 'after.block :=</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">STRINGS { s t }</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {output.nonnull}</p>
<p class="p1">{ 's :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>output.state mid.sentence =</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ " " * write$ }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ output.state after.block =</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ ", " * write$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>newline$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>"\newblock " write$</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ output.state before.all =</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>'write$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ add.period$ " " * write$ }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">      </span>mid.sentence 'output.state :=</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>s</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {output}</p>
<p class="p1">{ duplicate$ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'pop$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {output.check}</p>
<p class="p1">{ 't :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>duplicate$ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ pop$ "empty " t * " in " * cite$ * warning$ }</p>
<p class="p1"><span class="Apple-converted-space">    </span>'output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {output.bibitem}</p>
<p class="p1">{ newline$</p>
<p class="p1"><span class="Apple-converted-space">  </span>"\bibitem{" write$</p>
<p class="p1"><span class="Apple-converted-space">  </span>cite$ write$</p>
<p class="p1"><span class="Apple-converted-space">  </span>"}" write$</p>
<p class="p1"><span class="Apple-converted-space">  </span>newline$</p>
<p class="p1"><span class="Apple-converted-space">  </span>""</p>
<p class="p1"><span class="Apple-converted-space">  </span>before.all 'output.state :=</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {fin.entry}</p>
<p class="p1">{ add.period$</p>
<p class="p1"><span class="Apple-converted-space">  </span>write$</p>
<p class="p1"><span class="Apple-converted-space">  </span>newline$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {new.block}</p>
<p class="p1">{ output.state before.all =</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ after.block 'output.state := }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {new.sentence}</p>
<p class="p1">{ output.state after.block =</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ output.state before.all =</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ after.sentence 'output.state := }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {not}</p>
<p class="p1">{ <span class="Apple-converted-space">  </span>{ #0 }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ #1 }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {and}</p>
<p class="p1">{ <span class="Apple-converted-space">  </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ pop$ #0 }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {or}</p>
<p class="p1">{ <span class="Apple-converted-space">  </span>{ pop$ #1 }</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {new.block.checka}</p>
<p class="p1">{ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {new.block.checkb}</p>
<p class="p1">{ empty$</p>
<p class="p1"><span class="Apple-converted-space">  </span>swap$ empty$</p>
<p class="p1"><span class="Apple-converted-space">  </span>and</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {new.sentence.checka}</p>
<p class="p1">{ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'new.sentence</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {new.sentence.checkb}</p>
<p class="p1">{ empty$</p>
<p class="p1"><span class="Apple-converted-space">  </span>swap$ empty$</p>
<p class="p1"><span class="Apple-converted-space">  </span>and</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'new.sentence</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {field.or.null}</p>
<p class="p1">{ duplicate$ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ pop$ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {emphasize}</p>
<p class="p1">{ duplicate$ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ pop$ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "{\em " swap$ * "}" * }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {boldface}</p>
<p class="p1">{ duplicate$ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ pop$ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "{\bf " swap$ * "}" * }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p2"><br></p>
<p class="p1">INTEGERS { nameptr namesleft numnames }</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.names}</p>
<p class="p1">{ 's :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>#1 'nameptr :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>s num.names$ 'numnames :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>numnames 'namesleft :=</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ namesleft #0 &amp;gt; }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ s nameptr "{ff~}{vv~}{ll}{, jj}" format.name$ 't :=</p>
<p class="p1"><span class="Apple-converted-space">      </span>nameptr #1 &amp;gt;</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ namesleft #1 &amp;gt;</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ ", " * t * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ numnames #2 &amp;gt;</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-tab-span">	</span>{ "," * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>t "others" =</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-tab-span">	</span>{ " et~al." * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-tab-span">	</span>{ " and " * t * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span>'t</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">      </span>nameptr #1 + 'nameptr :=</p>
<p class="p1"><span class="Apple-converted-space">      </span>namesleft #1 - 'namesleft :=</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>while$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.authors}</p>
<p class="p1">{ author empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ author format.names }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.editors}</p>
<p class="p1">{ editor empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ editor format.names</p>
<p class="p1"><span class="Apple-converted-space">      </span>editor num.names$ #1 &amp;gt;</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ ", editors" * }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ ", editor" * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.title}</p>
<p class="p1">{ title empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "``" title "t" change.case$ * "''" * }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {n.dashify}</p>
<p class="p1">{ 't :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>""</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ t empty$ not }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ t #1 #1 substring$ "-" =</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ t #1 #2 substring$ "--" = not</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ "--" *</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>t #2 global.max$ substring$ 't :=</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ <span class="Apple-converted-space">  </span>{ t #1 #1 substring$ "-" = }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-tab-span">	</span>{ "-" *</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>t #2 global.max$ substring$ 't :=</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>while$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ t #1 #1 substring$ *</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>t #2 global.max$ substring$ 't :=</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>while$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.date}</p>
<p class="p1">{ year empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>'year<span class="Apple-converted-space"> </span></p>
<p class="p1"><span class="Apple-tab-span">	</span>{" (" <span class="Apple-converted-space">  </span>year * ")" * }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.btitle}</p>
<p class="p1">{ title emphasize</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {tie.or.space.connect}</p>
<p class="p1">{ duplicate$ text.length$ #3 &amp;lt;</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "~" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ " " }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>swap$ * *</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {either.or.check}</p>
<p class="p1">{ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'pop$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "can't use both " swap$ * " fields in " * cite$ * warning$ }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.bvolume}</p>
<p class="p1">{ volume empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "volume" volume tie.or.space.connect</p>
<p class="p1"><span class="Apple-converted-space">      </span>series empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ " of " * series emphasize * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">      </span>"volume and number" number either.or.check</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.number.series}</p>
<p class="p1">{ volume empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ number empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ series field.or.null }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ output.state mid.sentence =</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ "number" }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ "Number" }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>number tie.or.space.connect</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>series empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ "there's a number but no series in " cite$ * warning$ }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ " in " * series * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "" }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.edition}</p>
<p class="p1">{ edition empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ output.state mid.sentence =</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ edition "l" change.case$ " edition" * }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ edition "t" change.case$ " edition" * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">INTEGERS { multiresult }</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {multi.page.check}</p>
<p class="p1">{ 't :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>#0 'multiresult :=</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ multiresult not</p>
<p class="p1"><span class="Apple-converted-space">      </span>t empty$ not</p>
<p class="p1"><span class="Apple-converted-space">      </span>and</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ t #1 #1 substring$</p>
<p class="p1"><span class="Apple-converted-space">      </span>duplicate$ "-" =</p>
<p class="p1"><span class="Apple-converted-space">      </span>swap$ duplicate$ "," =</p>
<p class="p1"><span class="Apple-converted-space">      </span>swap$ "+" =</p>
<p class="p1"><span class="Apple-converted-space">      </span>or or</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ #1 'multiresult := }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ t #2 global.max$ substring$ 't := }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>while$</p>
<p class="p1"><span class="Apple-converted-space">  </span>multiresult</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.pages}</p>
<p class="p1">{ pages empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ pages multi.page.check</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ ", pp." pages n.dashify tie.or.space.connect }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ ", p." pages tie.or.space.connect }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.vol.num.pages}</p>
<p class="p1">{ volume field.or.null boldface</p>
<p class="p1"><span class="Apple-converted-space">  </span>number empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "(" number * ")" * *</p>
<p class="p1"><span class="Apple-converted-space">      </span>volume empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "there's a number but no volume in " cite$ * warning$ }</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>pages empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ duplicate$ empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ pop$ format.pages }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ ", pp. " * pages n.dashify * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.chapter.pages}</p>
<p class="p1">{ chapter empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'format.pages</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ type empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "chapter" }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ type "l" change.case$ }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">      </span>chapter tie.or.space.connect</p>
<p class="p1"><span class="Apple-converted-space">      </span>pages empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ ", " * format.pages * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.in.ed.booktitle}</p>
<p class="p1">{ booktitle empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ editor empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "In " booktitle emphasize * }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "In " format.editors * ", " * booktitle emphasize * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {empty.misc.check}</p>
<p class="p1">{ author empty$ title empty$ howpublished empty$</p>
<p class="p1"><span class="Apple-converted-space">  </span>month empty$ year empty$ note empty$</p>
<p class="p1"><span class="Apple-converted-space">  </span>and and and and and</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "all relevant fields are empty in " cite$ * warning$ }</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.thesis.type}</p>
<p class="p1">{ type empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ pop$</p>
<p class="p1"><span class="Apple-converted-space">      </span>type "t" change.case$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.tr.number}</p>
<p class="p1">{ type empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "Technical Report" }</p>
<p class="p1"><span class="Apple-converted-space">    </span>'type</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>number empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "t" change.case$ }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ number tie.or.space.connect }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.article.crossref}</p>
<p class="p1">{ key empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ journal empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "need key or journal for " cite$ * " to crossref " * crossref *</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>warning$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>""</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "In {\em " journal * "\/}" * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "In " key * }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>" \cite{" * crossref * "}" *</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.crossref.editor}</p>
<p class="p1">{ editor #1 "{vv~}{ll}" format.name$</p>
<p class="p1"><span class="Apple-converted-space">  </span>editor num.names$ duplicate$</p>
<p class="p1"><span class="Apple-converted-space">  </span>#2 &amp;gt;</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ pop$ " et~al." * }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ #2 &amp;lt;</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ editor #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ " et~al." * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ " and " * editor #2 "{vv~}{ll}" format.name$ * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.book.crossref}</p>
<p class="p1">{ volume empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "empty volume in " cite$ * "'s crossref of " * crossref * warning$</p>
<p class="p1"><span class="Apple-converted-space">      </span>"In "</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "Volume" volume tie.or.space.connect</p>
<p class="p1"><span class="Apple-converted-space">      </span>" of " *</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>editor empty$</p>
<p class="p1"><span class="Apple-converted-space">  </span>editor field.or.null author field.or.null =</p>
<p class="p1"><span class="Apple-converted-space">  </span>or</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ key empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ series empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ "need editor, key, or series for " cite$ * " to crossref " *</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>crossref * warning$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>"" *</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ "{\em " * series * "\/}" * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ key * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.crossref.editor * }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>" \cite{" * crossref * "}" *</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {format.incoll.inproc.crossref}</p>
<p class="p1">{ editor empty$</p>
<p class="p1"><span class="Apple-converted-space">  </span>editor field.or.null author field.or.null =</p>
<p class="p1"><span class="Apple-converted-space">  </span>or</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ key empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ booktitle empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ "need editor, key, or booktitle for " cite$ * " to crossref " *</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>crossref * warning$</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">      </span>""</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">    </span>{ "In {\em " booktitle * "\/}" * }</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "In " key * }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ "In " format.crossref.editor * }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>" \cite{" * crossref * "}" *</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {article}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors "author" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.title "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>crossref missing$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ journal emphasize "journal" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.vol.num.pages output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.article.crossref output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.pages output</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {book}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>author empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.editors "author and editor" output.check }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.authors output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">      </span>crossref missing$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "author and editor" editor either.or.check }</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.btitle "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>crossref missing$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.bvolume output</p>
<p class="p1"><span class="Apple-converted-space">      </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.number.series output</p>
<p class="p1"><span class="Apple-converted-space">      </span>new.sentence</p>
<p class="p1"><span class="Apple-converted-space">      </span>publisher "publisher" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>address output</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ new.block</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.book.crossref output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.edition output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {booklet}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors output</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.title "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>howpublished address new.block.checkb</p>
<p class="p1"><span class="Apple-converted-space">  </span>howpublished output</p>
<p class="p1"><span class="Apple-converted-space">  </span>address output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date output</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {inbook}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>author empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.editors "author and editor" output.check }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.authors output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">      </span>crossref missing$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ "author and editor" editor either.or.check }</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.btitle "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>crossref missing$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.bvolume output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.chapter.pages "chapter and pages" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.number.series output</p>
<p class="p1"><span class="Apple-converted-space">      </span>new.sentence</p>
<p class="p1"><span class="Apple-converted-space">      </span>publisher "publisher" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>address output</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.chapter.pages "chapter and pages" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.book.crossref output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.edition output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {incollection}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors "author" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.title "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>crossref missing$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.in.ed.booktitle "booktitle" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.bvolume output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.number.series output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.chapter.pages output</p>
<p class="p1"><span class="Apple-converted-space">      </span>new.sentence</p>
<p class="p1"><span class="Apple-converted-space">      </span>publisher "publisher" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>address output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.edition output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.incoll.inproc.crossref output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.chapter.pages output</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {inproceedings}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors "author" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.title "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>crossref missing$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.in.ed.booktitle "booktitle" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.bvolume output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.number.series output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.pages output</p>
<p class="p1"><span class="Apple-converted-space">      </span>address empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ organization publisher new.sentence.checkb</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>organization output</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>publisher output</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ address output.nonnull</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>new.sentence</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>organization output</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>publisher output</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.incoll.inproc.crossref output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.pages output</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {conference} { inproceedings }</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {manual}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>author empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ organization empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ organization output.nonnull</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>address output</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.authors output.nonnull }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.btitle "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>author empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ organization empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ address new.block.checka</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>address output</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ organization address new.block.checkb</p>
<p class="p1"><span class="Apple-converted-space">      </span>organization output</p>
<p class="p1"><span class="Apple-converted-space">      </span>address output</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.edition output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date output</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {mastersthesis}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors "author" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.title "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>"Master's thesis" format.thesis.type output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">  </span>school "school" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>address output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {misc}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors output</p>
<p class="p1"><span class="Apple-converted-space">  </span>title howpublished new.block.checkb</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.title output</p>
<p class="p1"><span class="Apple-converted-space">  </span>howpublished new.block.checka</p>
<p class="p1"><span class="Apple-converted-space">  </span>howpublished output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date output</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1"><span class="Apple-converted-space">  </span>empty.misc.check</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {phdthesis}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors "author" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.btitle "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>"PhD thesis" format.thesis.type output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">  </span>school "school" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>address output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {proceedings}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>editor empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ organization output }</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ format.editors output.nonnull }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.btitle "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.bvolume output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.number.series output</p>
<p class="p1"><span class="Apple-converted-space">  </span>address empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ editor empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ publisher new.sentence.checka }</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ organization publisher new.sentence.checkb</p>
<p class="p1"><span class="Apple-tab-span">	</span><span class="Apple-converted-space">  </span>organization output</p>
<p class="p1"><span class="Apple-tab-span">	</span>}</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">      </span>publisher output</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ address output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">      </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">      </span>new.sentence</p>
<p class="p1"><span class="Apple-converted-space">      </span>editor empty$</p>
<p class="p1"><span class="Apple-tab-span">	</span>'skip$</p>
<p class="p1"><span class="Apple-tab-span">	</span>{ organization output }</p>
<p class="p1"><span class="Apple-converted-space">      </span>if$</p>
<p class="p1"><span class="Apple-converted-space">      </span>publisher output</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {techreport}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors "author" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.title "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.tr.number output.nonnull</p>
<p class="p1"><span class="Apple-converted-space">  </span>institution "institution" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>address output</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date "year" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {unpublished}</p>
<p class="p1">{ output.bibitem</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.authors "author" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.title "title" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>new.block</p>
<p class="p1"><span class="Apple-converted-space">  </span>note "note" output.check</p>
<p class="p1"><span class="Apple-converted-space">  </span>format.date output</p>
<p class="p1"><span class="Apple-converted-space">  </span>fin.entry</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {default.type} { misc }</p>
<p class="p2"><br></p>
<p class="p1">MACRO {jan} {"January"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {feb} {"February"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {mar} {"March"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {apr} {"April"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {may} {"May"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {jun} {"June"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {jul} {"July"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {aug} {"August"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {sep} {"September"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {oct} {"October"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {nov} {"November"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {dec} {"December"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {acmcs} {"ACM Computing Surveys"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {acta} {"Acta Informatica"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {cacm} {"Communications of the ACM"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {ibmjrd} {"IBM Journal of Research and Development"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {ibmsj} {"IBM Systems Journal"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {ieeese} {"IEEE Transactions on Software Engineering"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {ieeetc} {"IEEE Transactions on Computers"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {ieeetcad}</p>
<p class="p1"><span class="Apple-converted-space"> </span>{"IEEE Transactions on Computer-Aided Design of Integrated Circuits"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {ipl} {"Information Processing Letters"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {jacm} {"Journal of the ACM"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {jcss} {"Journal of Computer and System Sciences"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {scp} {"Science of Computer Programming"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {sicomp} {"SIAM Journal on Computing"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {tocs} {"ACM Transactions on Computer Systems"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {tods} {"ACM Transactions on Database Systems"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {tog} {"ACM Transactions on Graphics"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {toms} {"ACM Transactions on Mathematical Software"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {toois} {"ACM Transactions on Office Information Systems"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {toplas} {"ACM Transactions on Programming Languages and Systems"}</p>
<p class="p2"><br></p>
<p class="p1">MACRO {tcs} {"Theoretical Computer Science"}</p>
<p class="p2"><br></p>
<p class="p1">READ</p>
<p class="p2"><br></p>
<p class="p1">STRINGS { longest.label }</p>
<p class="p2"><br></p>
<p class="p1">INTEGERS { number.label longest.label.width }</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {initialize.longest.label}</p>
<p class="p1">{ "" 'longest.label :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>#1 'number.label :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>#0 'longest.label.width :=</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {longest.label.pass}</p>
<p class="p1">{ number.label int.to.str$ 'label :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>number.label #1 + 'number.label :=</p>
<p class="p1"><span class="Apple-converted-space">  </span>label width$ longest.label.width &amp;gt;</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ label 'longest.label :=</p>
<p class="p1"><span class="Apple-converted-space">      </span>label width$ 'longest.label.width :=</p>
<p class="p1"><span class="Apple-converted-space">    </span>}</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">EXECUTE {initialize.longest.label}</p>
<p class="p2"><br></p>
<p class="p1">ITERATE {longest.label.pass}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {begin.bib}</p>
<p class="p1">{ preamble$ empty$</p>
<p class="p1"><span class="Apple-converted-space">    </span>'skip$</p>
<p class="p1"><span class="Apple-converted-space">    </span>{ preamble$ write$ newline$ }</p>
<p class="p1"><span class="Apple-converted-space">  </span>if$</p>
<p class="p1"><span class="Apple-converted-space">  </span>"\begin{thebibliography}{"<span class="Apple-converted-space">  </span>longest.label<span class="Apple-converted-space">  </span>* "}" * write$ newline$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">EXECUTE {begin.bib}</p>
<p class="p2"><br></p>
<p class="p1">EXECUTE {init.state.consts}</p>
<p class="p2"><br></p>
<p class="p1">ITERATE {call.type$}</p>
<p class="p2"><br></p>
<p class="p1">FUNCTION {end.bib}</p>
<p class="p1">{ newline$</p>
<p class="p1"><span class="Apple-converted-space">  </span>"\end{thebibliography}" write$ newline$</p>
<p class="p1">}</p>
<p class="p2"><br></p>
<p class="p1">EXECUTE {end.bib}</p>
</body>
</html>
    ( > \ s � � � � � �                           ��