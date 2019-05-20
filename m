Return-Path: <linux-ntb+bncBCELXQMOTUFBB5XRRPTQKGQEE6FHHXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id E0034240C0
	for <lists+linux-ntb@lfdr.de>; Mon, 20 May 2019 20:59:03 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id t2sf1765305ywc.10
        for <lists+linux-ntb@lfdr.de>; Mon, 20 May 2019 11:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MRQoHMhgGj5cNvzBvRzG+/XSmm3Xz9qtg7pwSlCoAKo=;
        b=cvFI9kYMFrk5s19xHJw6mqfAaoq6EIK7U2kMdi1Ti9PKRrLam98Mz8PxIoszMq2Z+M
         wnG8i1hZO2Tn2gsmkD8k8mcIynIenGMf7KrnlxApHKq7C4I4HpyVQQPMcot7mbtiFKdp
         A8hecxcASou8Sq3riw8PKnl+D55k6LL0ZyQszAgr0YdxcB/hZjFSeJs4eq/oU1UWR0hP
         1huzb25Tlab8S1cZexZ38mrQZBIrIkTrLy9td+ToENqyVSdUEc5mFuEj5AudN7tSkScD
         e0s+O1XRTQHNb+MX75x5VBVQrNcU+3W0wzPqYRKdIqgmzJKZnmYXpvVf1FbacF0kB612
         PTnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=genisists-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MRQoHMhgGj5cNvzBvRzG+/XSmm3Xz9qtg7pwSlCoAKo=;
        b=hk05RzSE0NMqD+I2WAbGGOfrn8/cePc23PMsBgMxGJSSffqPLMAHxegNCJLYEdgN1B
         9Id7C+BzNclhO+bdJ9yO7gRd69kCIlP8H+Vfkmr4xfGCsnsEE3uprZC3oGQfp5J0qX+D
         HUKCvdaLnThhmVkcWbCzgPe3dTmYtdzQsiXHjGG/5Y263+fy6IGB76Nl8tw3KSv/CCpT
         kwmMU+Iy3Y58PWXY0w2KPtl2tBqbO6ICut0tKK3ACvHRkf9bdSs7ObEPXE1quxkNkwUR
         KApaIr4mnFDpQYo0qwpHSqaYa0trfFG3HusCn7VU+e64/RiBONfDoALEeln4j0djsIAY
         Lt+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MRQoHMhgGj5cNvzBvRzG+/XSmm3Xz9qtg7pwSlCoAKo=;
        b=H1K9fD4LhtA3TSEd7zB3rDXaij67uRbnyuuSZiF2P+EY21Zxl1jpGhqPwWoVPpWpm3
         dMoe5RKZuPQVetOiBCt1SSGbKET+jXnKtog6+fLmMjIXMLP3E+qI1hnWS3Ag8NlgAuxF
         SOxpdQwvvz5VBsyvGbFFdOf0ErC8ut4WIFkzhyykNkB3DDBoUz1+qramS836HpJYKH9Q
         J2Snm06f7KzYEKYeAlbiAJ2U15D3bfTLUEU8OuZKnzX//n/5jdozAUO+us5p87FHK5wf
         iHVGLS1dijVC+tABK8Wh6z8lffxqf+wvgBlYd1taOMSKJTayURt8KkfpOQbyqgag/ZjC
         lURg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXwIDBvlfnx3nVkhPgBkFABpSxMLhxss/+WWoMOVU3w3f6hKdox
	l/4tNkhtxHgXiriOAaIwcLc=
X-Google-Smtp-Source: APXvYqxd2b83pMbdp31dJPrm37O4sC8+o7GElg7nstywGHA36YmMxsJrl2zmHCart+B77SXEP3GAnA==
X-Received: by 2002:a25:7608:: with SMTP id r8mr6684926ybc.274.1558378742409;
        Mon, 20 May 2019 11:59:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:384:: with SMTP id 126ls33613ybd.1.gmail; Mon, 20 May
 2019 11:59:02 -0700 (PDT)
X-Received: by 2002:a25:acc5:: with SMTP id x5mr12481865ybd.507.1558378741852;
        Mon, 20 May 2019 11:59:01 -0700 (PDT)
Date: Mon, 20 May 2019 11:59:01 -0700 (PDT)
From: prasanth THANDA <prasanth@genisists.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <9826846b-a971-4989-b77d-0828418037a1@googlegroups.com>
Subject: Sales force Developer//Arizona/NJ, Massachusetts//6 months//Direct
 Client
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2075_24180434.1558378741347"
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

------=_Part_2075_24180434.1558378741347
Content-Type: multipart/alternative; 
	boundary="----=_Part_2076_1212775567.1558378741348"

------=_Part_2076_1212775567.1558378741348
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

   WE HAVE URGENT REQUIREMENT FOR SALES FORCE DEVELOPER IN ARIZONA AND=20
MASSACHUSETTS

    *NOTE : DIRECT CLIENT REQUIREMENT...!*

Role: Sales force Developer
Contract: 6 months+

Location: Arizona/NJ, Massachusetts

Client : Direct

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


 --=20
Thanks & Regards,



Prashanth



US IT  RECRUITER



Email :*prasanth@genisists.com <prasanth@genisists.com>*

=20

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/9826846b-a971-4989-b77d-0828418037a1%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_2076_1212775567.1558378741348
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>=C2=A0 =C2=A0WE HAVE URG=
ENT REQUIREMENT FOR SALES FORCE DEVELOPER IN ARIZONA AND MASSACHUSETTS</div=
><div><br></div><div>=C2=A0 =C2=A0=C2=A0<b><i><u><font color=3D"#134f5c">NO=
TE : DIRECT CLIENT REQUIREMENT...!</font></u></i></b></div><div><br></div><=
div>Role: Sales force Developer</div><div>Contract: 6 months+</div><div><br=
></div><div>Location: Arizona/NJ, Massachusetts</div><div><br></div><div>Cl=
ient : Direct</div><div><br></div><div>=C2=A0</div><div><br></div><div>=C2=
=A0</div><div><br></div><div>Experience:</div><div><br></div><div>=C2=B7=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 8+ years in Software Development</div><div><br></d=
iv><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience in Cloud Tech=
nology and an in-depth understanding of the primary concepts and terminolog=
y</div><div><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years worki=
ng on Salesforce applications (Lightning is a must-have.)</div><div><br></d=
iv><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 5+ years experience using Force.c=
om (Advanced understanding of SFDC Triggers and Controllers, VF page develo=
pment, sObjects, SOQL etc)</div><div><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 3+ year hands-on experience in an Agile development team</div><d=
iv><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Experience in object or=
iented development is a must</div><div><br></div><div>=C2=B7=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 Experience with SOAP and REST Web Services and integration us=
ing APIs is a must</div><div><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 Experience with source control, branching strategies and using code rep=
ositories a must</div><div><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 Salesforce certification preferred</div><div><br></div><div>=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Background in leveraging ETL products and tools (e.g. =
IBM DataStage, Informatica, etc.) for data management is preferred</div><di=
v><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Previous experience of T=
est Driven development is preferred</div><div><br></div><div>=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Previous experience in a lead role within a team of en=
gineers</div><div><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Advanced=
 understanding of the Salesforce platform and its primary functions.</div><=
div><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 Ability to learn new t=
echnologies and embrace the challenge learning presents</div><div><br></div=
><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 A self-starter, comfortable having =
conversations with business partners</div><div><br></div><div>=C2=B7=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Robust and current knowledge of web standards, emergin=
g technologies, and trends</div><div><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Ability to think abstractly and deal with ambiguous/under-define=
d problems</div><div><br></div><div>=C2=B7=C2=A0 =C2=A0 =C2=A0 =C2=A0 An ex=
cellent communicator, both verbally and written.</div><div><br></div><div><=
br></div><div>=C2=A0--=C2=A0</div><div>Thanks &amp; Regards,</div><div><br>=
</div><div><br></div><div><br></div><div>Prashanth</div><div><br></div><div=
><br></div><div><br></div><div>US IT=C2=A0 RECRUITER</div><div><br></div><d=
iv><br></div><div><br></div><div>Email :<strong style=3D"font-family: arial=
, helvetica, sans-serif; font-size: small;"><em><a href=3D"mailto:prasanth@=
genisists.com" target=3D"_blank" data-mt-detrack-inspected=3D"true" style=
=3D"color: rgb(17, 85, 204);">prasanth@genisists.com</a></em></strong></div=
><div dir=3D"ltr" style=3D"font-size: small;"><div class=3D"m_7317114480409=
613312m_8825020921683662726gmail_signature" dir=3D"ltr" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr"><div style=3D"font-family: arial, helvetic=
a, sans-serif;"><a data-mt-detrack-inspected=3D"true" style=3D"color: rgb(3=
4, 34, 34);"><img class=3D"m_7317114480409613312CToWUd CToWUd" src=3D"https=
://ci3.googleusercontent.com/proxy/1gcs-zxCV-sXBHAkDUNXCCVJ2a6h1MId3mNnYNVp=
0FhTmwRvKw4LQgks3iaTXQjOOUH-Tzx5niXs0Tb2KtIh07hcjy6B0ExMjAXvta3pXcuwv4pCzpx=
tpwBgNsbnemBgpHaJdmsOJsiQZBLfW5l1ftwP_6QlhvyFNGfKrx3vqsJTZo4qa-dgKUoG8s9GZV=
wfTdzwY8rOrpS2MX5Csw=3Ds0-d-e1-ft#https://docs.google.com/uc?export=3Ddownl=
oad&amp;id=3D1fyCxLrUTDZagX7qMBnjT-v0CwrdizLZY&amp;revid=3D0ByEOHs6JWBvzS25=
CV0lwa2FFS2syRWxCbGdlYUxaUFpjL0N3PQ" alt=3D"" width=3D"200" height=3D"58"><=
/a></div></div></div></div><p style=3D"font-size: small;">=C2=A0</p></div>

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
om/d/msgid/linux-ntb/9826846b-a971-4989-b77d-0828418037a1%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/9826846b-a971-4989-b77d-0828418037a1%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_2076_1212775567.1558378741348--

------=_Part_2075_24180434.1558378741347--
