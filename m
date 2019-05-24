Return-Path: <linux-ntb+bncBCELXQMOTUFBBT7KT7TQKGQE3UFMIQA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CAF2992E
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 15:44:48 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id v22sf8200196ybb.9
        for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 06:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VgGXDYk1VDlwdhvH/AfHgZn1HfFPCdDJlicvCK6YKkU=;
        b=sHwWHlzVuTBOiD3JQNN0tkPs0b7oSdGJOz1VYCdZoU5YO8yFtWTVwUf+CBnNyO1suL
         zzGFCs+U/VfrvQmlkPYvygZbkOFtWiWS9tnjSUIZGkm5bkLnCtI36lJOy9fQhjHqFJZR
         nQ0rnIT3nGzgF8jOmpf8seVAu0OQgB5i1LArXZd11Ykb2VRiJAxpYHUxRTU2tJdZP/6t
         Eph9UK9pBwg9RivuNRMg/LOgsoobWbXKJMw5lIuPR7LC94rJY/AEXCD3gQJxW9Z2J9tn
         5hew3EXBlNyzkgWSB/M0bv0nAI8zb/YyYcPnzrbRkD+6ykqSRuBEO+QYaBdDcFGxQ102
         YB6w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgGXDYk1VDlwdhvH/AfHgZn1HfFPCdDJlicvCK6YKkU=;
        b=dRPLZGBwGRFK0q0Ci/Rwb+NHkAKyI908v4pZJ8I4DcGB6oFTDYmKra4y7ahGpGnq1m
         d4BVtBXn4Kp5DjUlpdjaLxBzNtKyPIUHFW7xUnShxCD9B8LnjfEkuOicVFh1PUkc6wOm
         3qrmBG43FO5lR3jXNn560onW1CDWO/vpTXwS1p+p0RJ/xjYLAnL6myGm1yJza4xpA3YQ
         K9Jux9waZejAnizvq3x4dxCcXxHxFjEgpd1WErXdFK6s4jkEXtTuri+Z3S9iiZCZTFwe
         B0wkmNaB+P6TQ8732OQndQMrp7mYiMzMkra77hydJb6sMIMK0Kq6IL/+etSl4aLMnShI
         y4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgGXDYk1VDlwdhvH/AfHgZn1HfFPCdDJlicvCK6YKkU=;
        b=jStdvY3YaXpWn5bXoRZh0Aast6nGi+VCGBlzcJ8fq4Z9fzSULk9nx9WvXH8SJYGiXZ
         /dgGRwxFVihKP5HIcxKnJya0eQ4ePgD7ofy/MbGux99hLoKqz3+gbG3fetpMjtPST0Xr
         R9ZiD3CE/J4i2DdkrH+dQT9z0v5yQhocMMGe+DVPmKZckRM2JDnocy+9z++wPNNkX7zX
         xxsPUIwpGDp3uWRwv9xmStYBKqySLQp5t/CRWkKhJshzh/oF/FZqD9vPyxyRaScSCrGn
         T30/J2ddljazxSE8cYy80RQUFch1sXPdYMzNRg5hGJowm/cnLu7ewrGvkbD8OyYcONOX
         6c3Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXBHj7VMdWwTpOxc+nDu94L87hk3ZgsdGzjbK/q668Fi0aCuUmW
	E4ssFXxACTSNY5UI/JINfIc=
X-Google-Smtp-Source: APXvYqwUGuEMTpb02w/jTX6ooatP8IRomkLKLOQfc3xbYvEl5+1kgZJnPRh5hXvoobEXO1wozubfjA==
X-Received: by 2002:a81:28c6:: with SMTP id o189mr47055792ywo.68.1558705487707;
        Fri, 24 May 2019 06:44:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:1541:: with SMTP id 62ls1166133ybv.5.gmail; Fri, 24 May
 2019 06:44:47 -0700 (PDT)
X-Received: by 2002:a25:c404:: with SMTP id u4mr47778554ybf.119.1558705487357;
        Fri, 24 May 2019 06:44:47 -0700 (PDT)
Date: Fri, 24 May 2019 06:44:46 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <c0b8565d-34e8-4ca3-846a-0ede09996e7f@googlegroups.com>
Subject: DIRECT CLIENT REQUIREMENT FOR SALESFORCE DEVELOPER
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_996_814307562.1558705486867"
X-Original-Sender: prasanth@genisists.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

------=_Part_996_814307562.1558705486867
Content-Type: multipart/alternative; 
	boundary="----=_Part_997_1351066178.1558705486868"

------=_Part_997_1351066178.1558705486868
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*WE HAVE URGENT REQUIREMENT FOR SALESFORCE DEVELOPER*

=20

SEND YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.

=20

=20

            * NOTE : DIRECT CLIENT REQUIREMENT*

=20

*Role: Sales force Developer*

*Contract: 6 months+*

*Location: Arizona/NJ, Massachusetts*

*Client : Direct*

=20

=20

Experience:

=C2=B7        8+ years in Software Development

=C2=B7        5+ years experience in Cloud Technology and an in-depth=20
understanding of the primary concepts and terminology

=C2=B7        5+ years working on Salesforce applications (Lightning is a=
=20
must-have.)

=C2=B7        5+ years experience using Force.com (Advanced understanding o=
f=20
SFDC Triggers and Controllers, VF page development, sObjects, SOQL etc)

=C2=B7        3+ year hands-on experience in an Agile development team

=C2=B7        Experience in object oriented development is a must

=C2=B7        Experience with SOAP and REST Web Services and integration us=
ing=20
APIs is a must

=C2=B7        Experience with source control, branching strategies and usin=
g=20
code repositories a must

=C2=B7        Salesforce certification preferred

=C2=B7        Background in leveraging ETL products and tools (e.g. IBM=20
DataStage, Informatica, etc.) for data management is preferred

=C2=B7        Previous experience of Test Driven development is preferred

=C2=B7        Previous experience in a lead role within a team of engineers

=C2=B7        Advanced understanding of the Salesforce platform and its pri=
mary=20
functions.

=C2=B7        Ability to learn new technologies and embrace the challenge=
=20
learning presents

=C2=B7        A self-starter, comfortable having conversations with busines=
s=20
partners

=C2=B7        Robust and current knowledge of web standards, emerging=20
technologies, and trends

=C2=B7        Ability to think abstractly and deal with ambiguous/under-def=
ined=20
problems

=C2=B7        An excellent communicator, both verbally and written.

=20

 *   Forward Your Resume To Below Mentioned Email Address. *

 =20

* HURRY......!!!*

--=20

*Thanks & Regards,*

*Prashanth*

*US IT  RECRUITER*

*+1 (315)947-0775*

*Email : prasanth@genisists.com <prasanth@genisists.com>*

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/c0b8565d-34e8-4ca3-846a-0ede09996e7f%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_997_1351066178.1558705486868
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"text-align: center;"><font size=3D"4" color=
=3D"#ffffff"><b><i style=3D"background-color: rgb(7, 55, 99);">WE HAVE URGE=
NT REQUIREMENT FOR SALESFORCE DEVELOPER</i></b></font></div><div style=3D"f=
ont-size: small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin=
-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, seri=
f;"><font color=3D"#0000ff"><u></u>=C2=A0<u></u></font></p></div><div style=
=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; m=
argin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;,=
 serif;"><font color=3D"#0c343d">SEND YOUR UPDATED RESUME TO BELOW MENTIONE=
D EMAIL ADDRESS.</font><font color=3D"#0000ff"><u></u><u></u></font></p></d=
iv><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-=
right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New=
 Roman&quot;, serif;"><font color=3D"#0000ff"><u></u>=C2=A0<u></u></font></=
p></div><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"ma=
rgin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Time=
s New Roman&quot;, serif;"><span style=3D"color: rgb(80, 0, 80);"><u></u>=
=C2=A0<u></u></span></p></div><div style=3D"font-size: small;"><p class=3D"=
MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; f=
ont-family: &quot;Times New Roman&quot;, serif;"><strong><span style=3D"fon=
t-size: 10pt; font-family: Calibri, sans-serif; color: black;">=C2=A0 =C2=
=A0</span></strong><strong><span style=3D"font-size: 13.5pt; font-family: C=
alibri, sans-serif; color: black;">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<=
/span></strong><strong><span style=3D"font-size: 13.5pt; font-family: Calib=
ri, sans-serif; color: blue;">=C2=A0NOTE : DIRECT CLIENT REQUIREMENT</span>=
</strong><u></u><u></u></p></div><div style=3D"font-size: small;"><p class=
=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; font-size: 12p=
t; font-family: &quot;Times New Roman&quot;, serif;"><u></u>=C2=A0<u></u></=
p></div><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"ma=
rgin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Time=
s New Roman&quot;, serif;"><strong><span style=3D"font-size: 10pt; font-fam=
ily: Calibri, sans-serif; color: black;">Role:=C2=A0Sales force=C2=A0Develo=
per</span></strong><span style=3D"color: rgb(80, 0, 80);"><u></u><u></u></s=
pan></p></div><div style=3D"font-size: small;"><p style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;=
"><strong><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif;=
 color: black;">Contract: 6 months+</span></strong><span style=3D"font-size=
: 11.5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u>=
<u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; fo=
nt-family: &quot;Times New Roman&quot;, serif;"><strong><span style=3D"font=
-size: 10pt; font-family: Calibri, sans-serif; color: black;">Location: Ari=
zona/NJ, Massachusetts</span></strong><span style=3D"font-size: 11.5pt; fon=
t-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span=
></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &q=
uot;Times New Roman&quot;, serif;"><strong><span style=3D"font-size: 10pt; =
font-family: Calibri, sans-serif; color: black;">Client : Direct</span></st=
rong><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; co=
lor: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;=
"><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color=
: rgb(51, 51, 51);">=C2=A0<u></u><u></u></span></p><p style=3D"margin: 0in =
0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, se=
rif;"><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; c=
olor: rgb(51, 51, 51);">=C2=A0<u></u><u></u></span></p><p style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;=
, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif;=
 color: black; background: rgb(249, 249, 249);">Experience:</span><span sty=
le=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(51, 5=
1, 51);"><u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; fon=
t-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in So=
ftware Development</span><span style=3D"font-size: 11.5pt; font-family: Cal=
ibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=
=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New=
 Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri,=
 sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 5+ years experience in Cloud Technology and an in-dept=
h understanding of the primary concepts and terminology</span><span style=
=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, =
80);"><u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-s=
ize: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D=
"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgroun=
d: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years working =
on=C2=A0Salesforce=C2=A0applications (Lightning=C2=A0is a must-have.)</span=
><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-serif; color:=
 rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.00=
01pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><s=
pan style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: blac=
k; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ ye=
ars experience using Force.com (Advanced understanding of SFDC Triggers and=
 Controllers, VF page development, sObjects, SOQL etc)</span><span style=3D=
"font-size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, 80)=
;"><u></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size=
: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"fo=
nt-size: 10pt; font-family: Calibri, sans-serif; color: black; background: =
rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 3+ year hands-on exp=
erience in an Agile development team</span><span style=3D"font-size: 11.5pt=
; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u><=
/span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-famil=
y: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; fon=
t-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 249)=
;">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience in object oriented developm=
ent is a must</span><span style=3D"font-size: 11.5pt; font-family: Calibri,=
 sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"m=
argin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roma=
n&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans=
-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Experience with SOAP and REST Web Services and integration us=
ing APIs is a must</span><span style=3D"font-size: 11.5pt; font-family: Cal=
ibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=
=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New=
 Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri,=
 sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Experience with source control, branching strategies a=
nd using code repositories a must</span><span style=3D"font-size: 11.5pt; f=
ont-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></sp=
an></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
&quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-f=
amily: Calibri, sans-serif; color: black; background: rgb(249, 249, 249);">=
=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0Salesforce=C2=A0certification prefer=
red</span><span style=3D"font-size: 11.5pt; font-family: Calibri, sans-seri=
f; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p style=3D"margin: 0in=
 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, s=
erif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; co=
lor: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Background in leveraging ETL products and tools (e.g. IBM DataStage, In=
formatica, etc.) for data management is preferred</span><span style=3D"font=
-size: 11.5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u=
></u><u></u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12p=
t; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-si=
ze: 10pt; font-family: Calibri, sans-serif; color: black; background: rgb(2=
49, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience of Te=
st Driven development is preferred</span><span style=3D"font-size: 11.5pt; =
font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></s=
pan></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family:=
 &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-=
family: Calibri, sans-serif; color: black; background: rgb(249, 249, 249);"=
>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience in a lead role withi=
n a team of engineers</span><span style=3D"font-size: 11.5pt; font-family: =
Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p><p st=
yle=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times =
New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calib=
ri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 Advanced understanding of the=C2=A0Salesforce=C2=A0pl=
atform and its primary functions.</span><span style=3D"font-size: 11.5pt; f=
ont-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></sp=
an></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
&quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-f=
amily: Calibri, sans-serif; color: black; background: rgb(249, 249, 249);">=
=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to learn new technologies and emb=
race the challenge learning presents</span><span style=3D"font-size: 11.5pt=
; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u><=
/span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-famil=
y: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; fon=
t-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 249)=
;">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable having con=
versations with business partners</span><span style=3D"font-size: 11.5pt; f=
ont-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></sp=
an></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: =
&quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-f=
amily: Calibri, sans-serif; color: black; background: rgb(249, 249, 249);">=
=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and current knowledge of web stand=
ards, emerging technologies, and trends</span><span style=3D"font-size: 11.=
5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></=
u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-fa=
mily: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; =
font-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 2=
49);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to think abstractly and dea=
l with ambiguous/under-defined problems</span><span style=3D"font-size: 11.=
5pt; font-family: Calibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></=
u></span></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-fa=
mily: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; =
font-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 2=
49);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An excellent communicator, both ver=
bally and written.</span><span style=3D"font-size: 11.5pt; font-family: Cal=
ibri, sans-serif; color: rgb(80, 0, 80);"><u></u><u></u></span></p></div><d=
iv style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-right=
: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roma=
n&quot;, serif;"><u></u>=C2=A0<u></u></p></div><p class=3D"MsoNormal" style=
=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;">=C2=
=A0<b><u><span style=3D"color: rgb(76, 17, 48);">=C2=A0=C2=A0 Forward Your =
Resume To Below Mentioned Email Address.=C2=A0</span></u></b><u></u><u></u>=
</p><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin=
-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times Ne=
w Roman&quot;, serif;"><b><i><span style=3D"color: rgb(204, 0, 0);">=C2=A0=
=C2=A0</span></i></b><u></u><u></u></p></div><div style=3D"font-size: small=
;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; fon=
t-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i><span=
 style=3D"color: rgb(204, 0, 0);">=C2=A0HURRY......!!!</span></i></b></p></=
div><div style=3D"font-size: small;"><br></div><span style=3D"font-size: sm=
all;">--=C2=A0</span><br style=3D"font-size: small;"><div dir=3D"ltr" class=
=3D"m_-5793908159553511464gmail_signature" data-smartmail=3D"gmail_signatur=
e" style=3D"font-size: small;"><div dir=3D"ltr"><div dir=3D"ltr"><p style=
=3D"font-family: arial, helvetica, sans-serif;"><b><i><span style=3D"line-h=
eight: 14.95px;">Thanks &amp; Regards,</span></i></b><span style=3D"line-he=
ight: 14.95px;"></span></p><p style=3D"font-family: arial, helvetica, sans-=
serif;"><b><i><span style=3D"line-height: 14.95px;">Prashanth</span></i></b=
></p><p style=3D"font-family: arial, helvetica, sans-serif;"><b><i><span st=
yle=3D"line-height: 14.95px;"></span></i></b><b><i><span style=3D"line-heig=
ht: 14.95px;"><b><i><span style=3D"line-height: 14.95px;">US IT=C2=A0 RECRU=
ITER</span></i></b><span style=3D"line-height: 14.95px;"></span></span></i>=
</b></p><p style=3D"font-family: arial, helvetica, sans-serif;"><b><i><span=
 style=3D"line-height: 14.95px;"><b><i><span style=3D"line-height: 14.95px;=
">+1 (315)947-0775</span></i></b></span></i></b></p><p><font face=3D"arial,=
 helvetica, sans-serif"><b><i>Email :=C2=A0<a href=3D"mailto:prasanth@genis=
ists.com" target=3D"_blank" data-mt-detrack-inspected=3D"true" style=3D"col=
or: rgb(17, 85, 204);">prasanth@genisists.com</a></i></b></font></p><div st=
yle=3D"font-family: arial, helvetica, sans-serif;"><a data-mt-detrack-inspe=
cted=3D"true"><img src=3D"https://ci3.googleusercontent.com/proxy/1gcs-zxCV=
-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh=
07hcjy6B0ExMjAXvta3pXcuwv4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6Qlhvy=
FNGfKrx3vqsJTZo4qa-dgKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://do=
cs.google.com/uc?export=3Ddownload&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizL=
ZY&amp;revid=3D0ByEOHs6JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=
=3D"200" height=3D"58" class=3D"CToWUd"></a></div></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:linux-ntb@googlegrou=
ps.com">linux-ntb@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/c0b8565d-34e8-4ca3-846a-0ede09996e7f%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/c0b8565d-34e8-4ca3-846a-0ede09996e7f%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_997_1351066178.1558705486868--

------=_Part_996_814307562.1558705486867--
