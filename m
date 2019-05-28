Return-Path: <linux-ntb+bncBCELXQMOTUFBB7H2WTTQKGQE3G6JKDQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E44A2C828
	for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 15:54:05 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id v191sf18975172ywc.11
        for <lists+linux-ntb@lfdr.de>; Tue, 28 May 2019 06:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w5LtDKiUKNMW7S1uOfXpAPo163z6DBrruSbG0HV6yx4=;
        b=TsMi2kadh7FpVT/ufvXgxRF1hxpGFITr4dssRvWz6rejIBSffM+5NFH+0yRRNmh/iB
         HfV/+vZm5772q8qjwElUXzwOxEgVQVs7rDbAl2pUsaeACXKQBoF+rSgYVGWbPBbQQLzp
         w8jeV4gn89la9x1ub6m79RPklv+IsLWlraNZJa4CH5HA17zz3Y8SjhScMGb/yRkq9szd
         nN1REqerCDF4snm/Bu7miEcLYrZzqEh0O4x5itzX/eAOqeZmIhFjNoH3HR4b0IKaJjJO
         GLGAU517k2s/s8cYZRBq5HnqYbCZ78gItjOLWGH0oOr6S+5dLnYFID5kp9cQGTYFW6Us
         E8yw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w5LtDKiUKNMW7S1uOfXpAPo163z6DBrruSbG0HV6yx4=;
        b=H8DiUugZzKa8P6UcTfSXY+YOzF/IwPSIxmaWuSLfA27j7I16FQhf5S5IKqrKuvdF3/
         KEIaEMAzH3MEvhhKNZ6iIC43A90o+um+w+/l591VkNBEFu52nhzs/yVrT0+vwabql5C+
         iwFJGQ2oMYd37wl/P0mwRLDn4O79bOZNWx4vLTcXElr0+iaB23c7QcLyei7McYe6Uw8O
         aYB661WvisEk70KvBkgD0xLvVbWr5LpeEfIbbmc95BgVqFmF50lwYl0CwkDBUnnB+geF
         uDk97atUkam99+7iVXndxncREc0NeKN6ai1qpJVkNOW7puwrx4xBkEFWWZhBpOXiW7rO
         YNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w5LtDKiUKNMW7S1uOfXpAPo163z6DBrruSbG0HV6yx4=;
        b=WUmxGQcflLW9lDTRYHunD8G2O3FCVDF1vzUaRHTXhyLggXMpjM+Ue7SAzUTs2t7U7Y
         WiNO3Tcc4Edrn4qgNiySw3DW8VWxywwPt2KLH68m81VufvlLIwXrSK9MqApR6xvj6TM0
         p8qjDfVgm/pO4He/3PC6OI7YkxLEEL182txugUO8wL4m6EStOAt/SavU7OfMf0fNPAGD
         xahKwWA4g3OObu641CZPZ3uva853p4VYoaPip7jZ6W+kowrW6iY4o/RO1g9u1s0/yUU4
         plgtHQOc9N4dYfakWYRj7Q/WRQ3qpOFn7WA2vkleE+jfMh/IkdaxHAzOxyS8WUhwqMrk
         KLGg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVIsFU4X8OrU1OdTHNhRdNC0H2NzHGv8RV1LLJkQIS2s//s6G6y
	WdM9VEABxLiP4MvkosECNGs=
X-Google-Smtp-Source: APXvYqwPtKV2FYwLKgqnE1vgW/yMuQxf70k7K5Oyb5SsP9dxB+RwNkqy+Eh3K0PTq5TjUTfm9baFkQ==
X-Received: by 2002:a81:4c05:: with SMTP id z5mr57397682ywa.413.1559051644533;
        Tue, 28 May 2019 06:54:04 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:ef08:: with SMTP id o8ls2305197ywm.15.gmail; Tue, 28 May
 2019 06:54:04 -0700 (PDT)
X-Received: by 2002:a81:57ce:: with SMTP id l197mr25269721ywb.115.1559051644045;
        Tue, 28 May 2019 06:54:04 -0700 (PDT)
Date: Tue, 28 May 2019 06:54:03 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <032e80c3-22a4-4f9b-b511-2a669bed92ab@googlegroups.com>
Subject: REQUIREMENT FOR SALESFORCE DEVELOPER//ARIZONA & MASSECHUSETTS
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2393_1139747952.1559051643494"
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

------=_Part_2393_1139747952.1559051643494
Content-Type: multipart/alternative; 
	boundary="----=_Part_2394_217913482.1559051643494"

------=_Part_2394_217913482.1559051643494
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



*WE HAVE URGENT REQUIREMENT FOR SALESFORCE DEVELOPER*



*SEND YOUR UPDATED RESUME TO BELOW MENTIONED EMAIL ADDRESS.*

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

=20

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
linux-ntb/032e80c3-22a4-4f9b-b511-2a669bed92ab%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2394_217913482.1559051643494
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" align=3D"center" style=3D"font-size=
: 12pt; font-family: &quot;Times New Roman&quot;, serif; text-align: center=
;"><b><i><span style=3D"background: rgb(102, 0, 0); font-size: 13.5pt; colo=
r: white;">WE HAVE URGENT REQUIREMENT FOR SALESFORCE DEVELOPER</span></i></=
b><span style=3D"background-color: rgb(76, 17, 48);"><u></u><u></u></span><=
/p><p class=3D"MsoNormal" align=3D"center" style=3D"font-size: 12pt; font-f=
amily: &quot;Times New Roman&quot;, serif; text-align: center;"><b><i><span=
 style=3D"background: rgb(102, 0, 0); font-size: 13.5pt; color: white;"><br=
></span></i></b></p><div style=3D"font-size: small;"><p class=3D"MsoNormal"=
 style=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family=
: &quot;Times New Roman&quot;, serif;"><b style=3D"font-size: 12pt;"><span =
style=3D"color: rgb(12, 52, 61);"><br></span></b></p><p class=3D"MsoNormal"=
 style=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family=
: &quot;Times New Roman&quot;, serif;"><b style=3D"font-size: 12pt;"><span =
style=3D"color: rgb(12, 52, 61);">SEND YOUR UPDATED RESUME TO BELOW MENTION=
ED EMAIL ADDRESS.</span></b></p></div><div style=3D"font-size: small;"><p c=
lass=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in; font-size:=
 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"col=
or: blue;"><b>=C2=A0</b></span><u></u><u></u></p></div><div style=3D"font-s=
ize: small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left=
: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><=
span style=3D"color: rgb(80, 0, 80);">=C2=A0</span><u></u><u></u></p></div>=
<div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-rig=
ht: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times New Ro=
man&quot;, serif;"><strong><span style=3D"font-size: 10pt; font-family: Cal=
ibri, sans-serif; color: black;">=C2=A0 =C2=A0</span></strong><strong><span=
 style=3D"font-size: 13.5pt; font-family: Calibri, sans-serif; color: black=
;">=C2=A0=C2=A0 =C2=A0 =C2=A0=C2=A0</span><span style=3D"font-size: 13.5pt;=
 font-family: Calibri, sans-serif;"><font color=3D"#ffffff">=C2=A0=C2=A0</f=
ont></span></strong><strong><span style=3D"font-size: 13.5pt; font-family: =
Calibri, sans-serif; background-color: rgb(12, 52, 61);"><font color=3D"#ff=
ffff">=C2=A0NOTE : DIRECT CLIENT REQUIREMENT</font></span></strong><u></u><=
u></u></p></div><div style=3D"font-size: small;"><p class=3D"MsoNormal" sty=
le=3D"margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &q=
uot;Times New Roman&quot;, serif;">=C2=A0<u></u><u></u></p></div><div style=
=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; m=
argin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;,=
 serif;"><strong><span style=3D"font-size: 10pt; font-family: Calibri, sans=
-serif; color: black;">Role:=C2=A0Sales force=C2=A0Developer</span></strong=
><u></u><u></u></p></div><div style=3D"font-size: small;"><p style=3D"margi=
n: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&qu=
ot;, serif;"><strong><span style=3D"font-size: 10pt; font-family: Calibri, =
sans-serif; color: black;">Contract: 6 months+</span></strong><u></u><u></u=
></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &q=
uot;Times New Roman&quot;, serif;"><strong><span style=3D"font-size: 10pt; =
font-family: Calibri, sans-serif; color: black;">Location: Arizona/NJ, Mass=
achusetts</span></strong><u></u><u></u></p><p style=3D"margin: 0in 0in 0.00=
01pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><s=
trong><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; col=
or: black;">Client : Direct</span></strong><u></u><u></u></p><p style=3D"ma=
rgin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman=
&quot;, serif;"><span style=3D"font-size: 11.5pt; font-family: Calibri, san=
s-serif; color: rgb(51, 51, 51);">=C2=A0</span><u></u><u></u></p><p style=
=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New=
 Roman&quot;, serif;"><span style=3D"font-size: 11.5pt; font-family: Calibr=
i, sans-serif; color: rgb(51, 51, 51);">=C2=A0</span><u></u><u></u></p><p s=
tyle=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times=
 New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Cali=
bri, sans-serif; color: black; background: rgb(249, 249, 249);">Experience:=
</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 1=
2pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font-=
size: 10pt; font-family: Calibri, sans-serif; color: black; background: rgb=
(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Software De=
velopment</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; fon=
t-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years exper=
ience in Cloud Technology and an in-depth understanding of the primary conc=
epts and terminology</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.=
0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;">=
<span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: bl=
ack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ =
years working on=C2=A0Salesforce=C2=A0applications (Lightning=C2=A0is a mus=
t-have.)</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font=
-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=
=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; backgr=
ound: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years exper=
ience using Force.com (Advanced understanding of SFDC Triggers and Controll=
ers, VF page development, sObjects, SOQL etc)</span><u></u><u></u></p><p st=
yle=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times =
New Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calib=
ri, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 3+ year hands-on experience in an Agile development t=
eam</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size=
: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"fo=
nt-size: 10pt; font-family: Calibri, sans-serif; color: black; background: =
rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience in object=
 oriented development is a must</span><u></u><u></u></p><p style=3D"margin:=
 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot=
;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif=
; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 Experience with SOAP and REST Web Services and integration using AP=
Is is a must</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span st=
yle=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; bac=
kground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience =
with source control, branching strategies and using code repositories a mus=
t</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: =
12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"font=
-size: 10pt; font-family: Calibri, sans-serif; color: black; background: rg=
b(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0Salesforce=C2=A0c=
ertification preferred</span><u></u><u></u></p><p style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;=
"><span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: =
black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 B=
ackground in leveraging ETL products and tools (e.g. IBM DataStage, Informa=
tica, etc.) for data management is preferred</span><u></u><u></u></p><p sty=
le=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times N=
ew Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibr=
i, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Previous experience of Test Driven development is pref=
erred</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-si=
ze: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span style=3D"=
font-size: 10pt; font-family: Calibri, sans-serif; color: black; background=
: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experienc=
e in a lead role within a team of engineers</span><u></u><u></u></p><p styl=
e=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times Ne=
w Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri=
, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Advanced understanding of the=C2=A0Salesforce=C2=A0pla=
tform and its primary functions.</span><u></u><u></u></p><p style=3D"margin=
: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quo=
t;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri, sans-seri=
f; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Ability to learn new technologies and embrace the challenge lear=
ning presents</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.0001pt;=
 font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><span s=
tyle=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: black; ba=
ckground: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-sta=
rter, comfortable having conversations with business partners</span><u></u>=
<u></u></p><p style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-fami=
ly: &quot;Times New Roman&quot;, serif;"><span style=3D"font-size: 10pt; fo=
nt-family: Calibri, sans-serif; color: black; background: rgb(249, 249, 249=
);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Robust and current knowledge of web s=
tandards, emerging technologies, and trends</span><u></u><u></u></p><p styl=
e=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: &quot;Times Ne=
w Roman&quot;, serif;"><span style=3D"font-size: 10pt; font-family: Calibri=
, sans-serif; color: black; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Ability to think abstractly and deal with ambiguous/un=
der-defined problems</span><u></u><u></u></p><p style=3D"margin: 0in 0in 0.=
0001pt; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;">=
<span style=3D"font-size: 10pt; font-family: Calibri, sans-serif; color: bl=
ack; background: rgb(249, 249, 249);">=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An =
excellent communicator, both verbally and written.</span><u></u><u></u></p>=
</div><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D"marg=
in-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Times =
New Roman&quot;, serif;">=C2=A0<u></u><u></u></p></div><p class=3D"MsoNorma=
l" style=3D"font-size: 12pt; font-family: &quot;Times New Roman&quot;, seri=
f;">=C2=A0<b><u><span style=3D"color: rgb(76, 17, 48);">=C2=A0=C2=A0 Forwar=
d Your Resume To Below Mentioned Email Address.=C2=A0</span></u></b><u></u>=
<u></u></p><div style=3D"font-size: small;"><p class=3D"MsoNormal" style=3D=
"margin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;T=
imes New Roman&quot;, serif;"><b><i><span style=3D"color: rgb(204, 0, 0);">=
=C2=A0=C2=A0</span></i></b><u></u><u></u></p></div><div style=3D"font-size:=
 small;"><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0i=
n; font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i=
><span style=3D"color: rgb(204, 0, 0);">=C2=A0HURRY......!!!</span></i></b>=
<span class=3D"m_1829639838445851505gmail-HOEnZb"><font color=3D"#888888"><=
u></u><u></u></font></span></p><span class=3D"m_1829639838445851505gmail-HO=
EnZb"><font color=3D"#888888"></font></span></div><span class=3D"m_18296398=
38445851505gmail-HOEnZb" style=3D"font-size: small;"><font color=3D"#888888=
"><div><p class=3D"MsoNormal" style=3D"margin-right: 0in; margin-left: 0in;=
 font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><u></u>=
=C2=A0<u></u></p></div><p class=3D"MsoNormal" style=3D"margin-right: 0in; m=
argin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;,=
 serif;">--=C2=A0<u></u><u></u></p><div><p style=3D"margin-right: 0in; marg=
in-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, se=
rif;"><b><i><span style=3D"font-family: Arial, sans-serif;">Thanks &amp; Re=
gards,</span></i></b><span style=3D"font-family: Arial, sans-serif;"><u></u=
><u></u></span></p><p style=3D"margin-right: 0in; margin-left: 0in; font-si=
ze: 12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i><span sty=
le=3D"font-family: Arial, sans-serif;">Prashanth</span></i></b><span style=
=3D"font-family: Arial, sans-serif;"><u></u><u></u></span></p><p style=3D"m=
argin-right: 0in; margin-left: 0in; font-size: 12pt; font-family: &quot;Tim=
es New Roman&quot;, serif;"><b><i><span style=3D"font-family: Arial, sans-s=
erif;">US IT=C2=A0 RECRUITER</span></i></b><span style=3D"font-family: Aria=
l, sans-serif;"><u></u><u></u></span></p><p style=3D"margin-right: 0in; mar=
gin-left: 0in; font-size: 12pt; font-family: &quot;Times New Roman&quot;, s=
erif;"><b><i><span style=3D"font-family: Arial, sans-serif;">+1 (315)947-07=
75</span></i></b><span style=3D"font-family: Arial, sans-serif;"><u></u><u>=
</u></span></p><p style=3D"margin-right: 0in; margin-left: 0in; font-size: =
12pt; font-family: &quot;Times New Roman&quot;, serif;"><b><i><span style=
=3D"font-family: Arial, sans-serif;">Email :=C2=A0<a href=3D"mailto:prasant=
h@genisists.com" target=3D"_blank" data-mt-detrack-inspected=3D"true" style=
=3D"color: rgb(17, 85, 204);">prasanth@genisists.com</a></span></i></b></p>=
</div></font></span><div style=3D"font-size: small;"><a data-mt-detrack-ins=
pected=3D"true" style=3D"font-family: arial, helvetica, sans-serif;"><img s=
rc=3D"https://ci3.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1=
MId3mNnYNVp0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3p=
Xcuwv4pCzpxtpwBgNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-d=
gKUoG8s9GZVwfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?exp=
ort=3Ddownload&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEO=
Hs6JWBvzS25CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" width=3D"200" height=3D"58"=
 class=3D"CToWUd"></a></div><div><a data-mt-detrack-inspected=3D"true" styl=
e=3D"font-family: arial, helvetica, sans-serif;"><br></a></div></div>

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
om/d/msgid/linux-ntb/032e80c3-22a4-4f9b-b511-2a669bed92ab%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/032e80c3-22a4-4f9b-b511-2a669bed92ab%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2394_217913482.1559051643494--

------=_Part_2393_1139747952.1559051643494--
