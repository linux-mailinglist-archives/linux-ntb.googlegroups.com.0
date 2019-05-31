Return-Path: <linux-ntb+bncBCSJL7WB3YHBBYPTYXTQKGQEICNXZTY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CC631506
	for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 21:00:49 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id b19sf4411524wrh.17
        for <lists+linux-ntb@lfdr.de>; Fri, 31 May 2019 12:00:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559329249; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nw/T9oqOYTW1WFIqYUPqaveQzGAtxev5/tddPxx/xX5LVaMDZGcorWapykqbKm4/vE
         daCuurNnJoHFtxoNWfpjXM7e7MrnxwlfONVFmzg1VbucYxukKgpD02NO0GQMjijbmMA4
         XdC6fcsOSCwkT2h/rh3zUVUKuB7gNhJZQiz7N5DKQoZPmwaWiLmKGaRnVwoTbFa/W66u
         mP2ifKV22eTCiiY7Y2n6MAKDxroXFhyxHJVOu5H4+4Pqp9slyGg7NhYpWtk8EaBShtjf
         6+VDAs+Ql+KVgyXzgUNBmms9YFzU+V38A+P+dkqDnnfCuspCa53DLxOhChyFGu8eTUyg
         jPLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=lb7q8tze4wqCWTft67Ati0HUj5y44wacVwdVBYnA2S4=;
        b=057eTsSSObVNvUUwpUVZkVmdQLSrGsyIwb+Y1veOaS+STWAdmfIaQzCeNg24mxIoxp
         1p0cVuFh9qmYcsgPHwL08UNYvayXNU73dTbGrAEyll9JODmAzeKKFceDnjDOQTbZtEa3
         hfOs84acxKPSB74FPnVmiShZUzP8J3S4/pGvrOskqVzJUeprUA8B+ZHqFZgcSjUvngEI
         Kv4pvupdwGrRPFWaf6ZuR5OWBtzVUuCcJ7eZSD0jwP0Hz8ZoBmRmEpbyjYmzKt2Koyr/
         wwxMp+uEPFGHs5fOQ2CiGGwYEdH7/6ihJvTbheRdNKc+3xmTO50LFKCYCvvg6g0PfcI+
         dcsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uo81ORfQ;
       spf=pass (google.com: domain of aravindkumar.canopyone@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=aravindkumar.canopyone@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lb7q8tze4wqCWTft67Ati0HUj5y44wacVwdVBYnA2S4=;
        b=bOPiBGbiNfffBAQf6v6IPLJfeN23Yy248OYoiusemJepvzN4xUdx5xRSYCPRGYZriF
         i6qPfpYjI7JriHvkiq1qEk+qmYKEP+fWfYdC3ck2lK8shZoYuNUGNg4rHdq/w/up7nrn
         akSdYbHfHutVtXyxy62coYsWeCP1CDcywZiLPZ0ZA7IAjX0d49uwI6kgTXK0B6T9M0jc
         7aIjyG2ndDKtJT82eejhbXB52mDw1hZWjzA3J8CXQSHkGimdV76dTLcQLCgdOfKs57Lp
         WFu4VqEVwOtGvAZfJIxTu0dgzKwMSQ1liCRdBX1GwWycCqCSwh/hm9/MReRsnV+zXRHz
         4lsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lb7q8tze4wqCWTft67Ati0HUj5y44wacVwdVBYnA2S4=;
        b=pgXI9zUurWlK/yT+aKu55OUWUfuTQfqfvE9Y4qvg/Egy562XoQ/M0XXUYZHqA+sJdG
         YcRuDmyrqwD9ykLWYQmzTrAEZuflhOvFhIg+XVuLB3Nx3qXrlPjR66SbfusXawnp934U
         c8cs3gj1g31y3GPsrBcxNLV1LVLWrGUy6kFLk8kJC1zGEXUqvAh4cbxpJZzAC1nHM2yL
         t1wCaAxA6u1U4LxXIQ+cxSuf3TkYmn9fEPK0rNx4MnUcM58a6SrAZEKWx59rHD3mvoUI
         MmlTmXACK59fRYtjXEy9m1ICF4uMs/pqvoJQkUJ8qxx2HgaCEpi4SgeQ0MYxc/LGjbqp
         3Jfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lb7q8tze4wqCWTft67Ati0HUj5y44wacVwdVBYnA2S4=;
        b=m1w91Vaxs3QaJ+HQhzQx3xGrsOuyXGoh2SQ0+LOJHX0CSPKIu1XsN61VcGERLZz1Cg
         EvKGcoPB3tQOd87ZfQyXBci24RzFOGG/UJ6FQaub+OJZF8VAnMPuhGgEPAdxv5doSvAV
         UJyiFEKki9mbHPIRmxkUwNIANyG0COri1s6zfqGBdCWup5e15uOGV705VVyyBK6an2c6
         sPAj/Tzlan9v7/VNI/UM8nIb3V2DoU7R9xDBKM7K36fhoFfIi8GwuseHwTPJL53/uk5n
         FfaQM/9dKNLZr6/aFtx/4foPqzqVULmH39GTlxbWoPWwu7BHV/g+HocdKHsgndU9JMcL
         OxPw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVjrVp/6kByKVO4TqyvAbcv6g+9Glv8boVfh9X7QXG04EDu9inG
	+HlRSW4ACS7Nbhx0ytzaJ5s=
X-Google-Smtp-Source: APXvYqwqy1uzhiHfvPCS9tZmzxEbfRU4fGJbU5TPIC2pZRNUL7QQOQPELL/m4V4EvxLEK6xKN0S9cg==
X-Received: by 2002:adf:f483:: with SMTP id l3mr2190889wro.256.1559329249180;
        Fri, 31 May 2019 12:00:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:96d2:: with SMTP id y201ls426590wmd.3.gmail; Fri, 31 May
 2019 12:00:48 -0700 (PDT)
X-Received: by 2002:a05:600c:2550:: with SMTP id e16mr6948459wma.90.1559329248596;
        Fri, 31 May 2019 12:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559329248; cv=none;
        d=google.com; s=arc-20160816;
        b=oOa8KWPIYPYZGy2vS1z61ZxTPdAK4JgaLdL4i+a5xgxp4ZYFVn2E0oNh4ko2lkkySR
         RgjgJSuNJk3P22YPubOINMourHBsUGkwaPT2Cq2EJT8VbSSHveq9ckk3DZQv4r7ihbfi
         Ax/0insCb0D22Q1K6PYQbKUW2jACCICxMmll8Xg7M0cxnSVFLJ99eVUQnVobQgyJAOad
         MPyzo62ut7vpaVSTdD7Kmgkvo5wBAECOYfrxznRdrIBZ2sSW9i4K4QiamtYVfYxMWMiO
         NAoTxuF1mYoKO9zXAxzKsO2WEhNzrh6FmOf4+bFr/iVYT9J47Fwt5HSJABRkTKBnfj+f
         dqkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=tfqDiRJRHDuoMfaljHWSN9fUBKHCVGec9NYTvso3JUs=;
        b=bgkapj84C1LB0a5Hws5LK2jbP/K5SRd2Z1EsSq1dCQHXrJuo5sAix6efkqaQUS0bxL
         0LUd/Thd1vlcngArcK/PbU0yaR/zaksct0W0G32of5YDoc16Hfr6Q2bvzOs/+/eN1idL
         99al+N4TrE6HlJ12QQFSl2BwIP1vyG0U/bcWj9dK/XJuLnNqv7zElgB+qyto2d/V/yoh
         u0p8hJAYd2EPMOFxbJd39Z8c+YeWAaHa+vYJd7nyiyRVWa5rz2yS79bu/I4RFZktY2ir
         LJ+BYUmIjiSKps8O2eKgLkDJQEpcs/rq92TpuD7QrLl28ATH54A/wXT2aWyrTJRMEes7
         oLUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uo81ORfQ;
       spf=pass (google.com: domain of aravindkumar.canopyone@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=aravindkumar.canopyone@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id j18si335346wrc.1.2019.05.31.12.00.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 31 May 2019 12:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of aravindkumar.canopyone@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id 136so8745770lfa.8
        for <linux-ntb@googlegroups.com>; Fri, 31 May 2019 12:00:48 -0700 (PDT)
X-Received: by 2002:a19:cdce:: with SMTP id d197mr6247972lfg.161.1559329248090;
 Fri, 31 May 2019 12:00:48 -0700 (PDT)
MIME-Version: 1.0
From: aravindkumar canopyone <aravindkumar.canopyone@gmail.com>
Date: Fri, 31 May 2019 15:00:28 -0400
Message-ID: <CAHdSO-He3u15zPqGqpn0y0r1A9iH8Nz+RCPOi3xHbuUtOM9sVw@mail.gmail.com>
Subject: Sr Java Developer for location Seattle, WA
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000eba15f058a33a1a6"
X-Original-Sender: aravindkumar.canopyone@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uo81ORfQ;       spf=pass
 (google.com: domain of aravindkumar.canopyone@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=aravindkumar.canopyone@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000eba15f058a33a1a6
Content-Type: text/plain; charset="UTF-8"

Greetings from Canopy One Solutions,



Hope you all are doing well!



Please glance the requirement & respond me back with your finest consultant
Resumes & Contact Details.



*Note: Need Passport Number & client batch id. *



*Project Details: *



Role: Sr java Developer

Location: Seattle ,WA

Duration: Long Term

Visa: USC/GC/H1B/EADs

Interview Criteria: Skype & Telephonic



*Job Description: *

*Must Have Skills: *Java/J2EE, Spring boot, Spring MVC, Microservices

*Desired Skills: *Java/J2EE, Spring boot, Spring MVC, Microservices

*Job Roles / Responsibilities:       *

Expertise in doing coding in Java/J2EE, Spring boot, Spring MVC,
Microservices



Thanks & Regards
Thanks & Regards
Aravindkumar Komminenei

[image: cid:image008.png@01CE7195.60877940]

Phone: 703-831-8282 Ext 2532, Fax: 703-439-2550
Email: k.aravind@canopyone.com <b.natraj@canopyone.com>  URL:
www.canopyone.com

USA : 4229 Lafayette Center Dr , Suite #1625, Chantilly, VA 20151  || *CANADA:
*Bankers Hall - West Tower, 888 - 3rd Street SW, 10th Floor, Calgary, AB
T2P 5C5*||* *INDIA:*  4th Floor, #7, Techno Enclave, Sector 3, Hyderabad
500081*||*

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHdSO-He3u15zPqGqpn0y0r1A9iH8Nz%2BRCPOi3xHbuUtOM9sVw%40mail.gmail.com.
For more options, visit https://groups.google.com/d/optout.

--000000000000eba15f058a33a1a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.=
0001pt;font-size:12pt;font-family:&quot;Times New Roman&quot;,serif"><span =
style=3D"font-size:10pt;font-family:Cambria,serif">Greetings
from Canopy One Solutions, </span><span style=3D"font-size:10pt;font-family=
:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">=C2=A0</span><span style=3D"font-size:10p=
t;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">Hope
you all are doing well!</span><span style=3D"font-size:10pt;font-family:Cal=
ibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">=C2=A0</span><span style=3D"font-size:10p=
t;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">Please
glance the requirement &amp; respond me back with your finest consultant
Resumes &amp; Contact Details. </span><span style=3D"font-size:10pt;font-fa=
mily:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">=C2=A0</span><span style=3D"font-size:10p=
t;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><b><span style=3D"font-=
size:20pt;font-family:Cambria,serif;color:red">Note: Need Passport Number &=
amp; client batch id. </span></b><span style=3D"font-size:10pt;font-family:=
Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:11pt;font-family:Cambria,serif">=C2=A0</span><span style=3D"font-size:10p=
t;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><b><span style=3D"font-=
size:10pt;font-family:Cambria,serif">Project
Details: </span></b><span style=3D"font-size:10pt;font-family:Calibri,sans-=
serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">=C2=A0</span><span style=3D"font-size:10p=
t;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">Role:
Sr java Developer </span><span style=3D"font-size:10pt;font-family:Calibri,=
sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">Location:
Seattle ,WA</span><span style=3D"font-size:10pt;font-family:Calibri,sans-se=
rif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">Duration:
Long Term</span><span style=3D"font-size:10pt;font-family:Calibri,sans-seri=
f"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">Visa:
USC/GC/H1B/EADs </span><span style=3D"font-size:10pt;font-family:Calibri,sa=
ns-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">Interview
Criteria: Skype &amp; Telephonic </span><span style=3D"font-size:10pt;font-=
family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><b><span style=3D"font-=
size:10pt;font-family:Cambria,serif">=C2=A0</span></b><span style=3D"font-s=
ize:10pt;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><b><span style=3D"font-=
size:10pt;font-family:Cambria,serif">Job
Description: </span></b><span style=3D"font-size:10pt;font-family:Calibri,s=
ans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><b><span style=3D"font-=
size:10pt;font-family:Cambria,serif">Must
Have Skills: </span></b><span style=3D"font-size:10pt;font-family:Cambria,s=
erif">Java/J2EE, Spring boot, Spring MVC, Microservices</span><span style=
=3D"font-size:10pt;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><b><span style=3D"font-=
size:10pt;font-family:Cambria,serif">Desired
Skills: </span></b><span style=3D"font-size:10pt;font-family:Cambria,serif"=
>Java/J2EE, Spring boot, Spring MVC, Microservices</span><span style=3D"fon=
t-size:10pt;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><b><span style=3D"font-=
size:10pt;font-family:Cambria,serif">Job
Roles / Responsibilities:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></b><s=
pan style=3D"font-size:10pt;font-family:Calibri,sans-serif"></span></p>

<p class=3D"gmail-wordsection1" style=3D"margin:0in 0in 0.0001pt;font-size:=
12pt;font-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-siz=
e:10pt;font-family:Cambria,serif">Expertise
in doing coding in Java/J2EE, Spring boot, Spring MVC, Microservices </span=
><span style=3D"font-size:10pt;font-family:Calibri,sans-serif"></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font=
-family:&quot;Times New Roman&quot;,serif"><span style=3D"font-size:11pt;fo=
nt-family:Cambria,serif">=C2=A0
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</span><br clear=3D"a=
ll">
</p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:12pt;font=
-family:&quot;Times New Roman&quot;,serif">Thanks &amp; Regards</p><div><di=
v dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">=
<div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr">Thanks &amp; Regards</div><div dir=3D"ltr">Aravindkumar Komminenei=
=C2=A0<div><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><img=
 width=3D"113" height=3D"37" alt=3D"cid:image008.png@01CE7195.60877940"></s=
pan><span style=3D"font-size:10pt;color:rgb(31,73,125)"><span></span></span=
></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Cambria,se=
rif;color:rgb(31,73,125)">Phone: 703-831-8282=C2=A0Ext 2532, Fax: 703-439-2=
550<br>
Email: k.aravind<a href=3D"mailto:b.natraj@canopyone.com" target=3D"_blank"=
>@canopyone.com</a>=C2=A0
URL: <a href=3D"http://www.canopyone.com/" target=3D"_blank"><span style=3D=
"color:blue">www.canopyone.com</span></a><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:10pt;font-fam=
ily:Cambria,serif;color:rgb(227,108,10)">USA :</span><span style=3D"font-si=
ze:10pt;font-family:Cambria,serif;color:rgb(127,127,127)"> </span><span sty=
le=3D"font-size:10pt;font-family:Cambria,serif;color:black">4229 Lafayette
Center Dr , Suite #1625, Chantilly, VA 20151</span><span style=3D"font-size=
:10pt;font-family:Cambria,serif;color:rgb(31,73,125)">=C2=A0 </span><span s=
tyle=3D"font-size:10pt;font-family:Cambria,serif;color:black">||=C2=A0</spa=
n><b><span style=3D"font-size:10pt;font-family:Cambria,serif;color:rgb(227,=
108,10)">CANADA: </span></b><span style=3D"font-size:10pt;font-family:Cambr=
ia,serif;color:rgb(31,73,125)">Bankers Hall
- West Tower, 888 - 3rd Street SW,=C2=A010th Floor, Calgary,=C2=A0AB T2P 5C=
5<b>||</b>=C2=A0</span><b><span style=3D"font-size:10pt;font-family:Cambria=
,serif;color:rgb(227,108,10)">INDIA:</span></b><span style=3D"font-size:10p=
t;font-family:Cambria,serif;color:rgb(31,73,125);background-image:initial;b=
ackground-position:initial;background-repeat:initial"> =C2=A04<sup>th</sup>=
 Floor, #7, Techno Enclave, Sector 3, Hyderabad
500081</span><b><span style=3D"font-size:10pt;font-family:Cambria,serif;col=
or:rgb(31,73,125)">||</span></b><span style=3D"font-size:10pt;font-family:C=
ambria,serif;color:black"><span></span></span></p></div></div></div></div><=
/div></div></div></div></div></div></div>

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
om/d/msgid/linux-ntb/CAHdSO-He3u15zPqGqpn0y0r1A9iH8Nz%2BRCPOi3xHbuUtOM9sVw%=
40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goo=
gle.com/d/msgid/linux-ntb/CAHdSO-He3u15zPqGqpn0y0r1A9iH8Nz%2BRCPOi3xHbuUtOM=
9sVw%40mail.gmail.com</a>.<br />
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

--000000000000eba15f058a33a1a6--
