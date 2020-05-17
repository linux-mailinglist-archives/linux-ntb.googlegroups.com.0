Return-Path: <linux-ntb+bncBDBO5SWC5EARBBVXQH3AKGQEPOKHAVA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa50.google.com (mail-vk1-xa50.google.com [IPv6:2607:f8b0:4864:20::a50])
	by mail.lfdr.de (Postfix) with ESMTPS id 737511D6443
	for <lists+linux-ntb@lfdr.de>; Sat, 16 May 2020 23:30:47 +0200 (CEST)
Received: by mail-vk1-xa50.google.com with SMTP id n64sf1586962vkn.7
        for <lists+linux-ntb@lfdr.de>; Sat, 16 May 2020 14:30:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589664646; cv=pass;
        d=google.com; s=arc-20160816;
        b=NQbc1zSVJGfDAA8SYsfaTS2CVg8q3SVDgOluuwqpdxh5oGIhaX0FiaNen6wkJj7SrU
         xn3ezp+quFtMtcXiJv+i49Qf0jwMiVBZID7uqkrAyCzpwBJyr+SJRRQqG7+ED9DMvoP6
         zh3xQHkoO25uWvWdn7vsAp1HLoKYWYYs4/R7/2YLYKLYOnPzxyzKAFmkoHofi41e+sl1
         BlR0e1FSRikKI08qHd/UKwsqxiyb+Ob1m+oMB7265bZshwS4vpHNnoBqeu/GSEbWjTQ8
         f4uUMZxoOP7jFsMD0CTy/xZdbQgCVp8rtcE/P1UxVEGb9Beb959aOmdCBSFJIRNQHptj
         POZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=L5WHjWbB2eCnk9Dii6Pao2b6Ng5hoJqKlbrupLfgAiE=;
        b=B+kVKceOXyf4XwUIdF7OCf+NVqJlhlPJzhysNGRJDm60GaQ2W0ZUn66ONofQKMlR0p
         IWFLRYlGcT6EMNR6ntpuTtK1OY4a4uwyROSiy2ETmaKwnkmHqe9kcv2A8MSQxPBL7tsk
         zhHTy6ADFdbKaQ55XnSNChd5LVVtHAUa0vagN6X6YgKr470C1SMsvLfSUubwAJPyW8Xl
         6VSDPJh85phbxIumG/jfOFsFuOaE+3pMZKUNXk1e880xS3fzZDc2eJs3NA6YyIcaEti4
         m/+y90+g01AmowglNJHMAMbvVk+hru88bIug8VGez/mfIEo8A3ExI2nmE0U5rxFcm9Uv
         9erA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qOjWG/Up";
       spf=pass (google.com: domain of zaring.kkipkalya@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=zaring.kkipkalya@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L5WHjWbB2eCnk9Dii6Pao2b6Ng5hoJqKlbrupLfgAiE=;
        b=aBkcCl3IJ0M5jTHGO/y5h8Rz3O3t5okrqprd99WHQB20zR47UQ6k0FKs/VQDJ8gHkz
         MQKeYx0FM0TBA81vKkDC+9Z8fHCbrabe8TREe9rAmBWTCQZfQmyjHdhVaqy9PkzgRF85
         QCi44rnr5VCElGoPoxB276yQ3BoJIKjco0wj4gPQgfFXBAkcYjUrFg+kUUE95Ae/cggs
         RRfJgdn35Sn1d2WsOd1vknCIH4r/Innnc/VAbIoQKL1a66o0kejdHu8NOk+z12ybtODB
         EdCRB23gFAnboE5vqhkf9njdn7Tu0cWLn+4/IVN72YGp+lqZ9ZQ6H1t9iRoQ87usLVvY
         cBxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L5WHjWbB2eCnk9Dii6Pao2b6Ng5hoJqKlbrupLfgAiE=;
        b=mnH3kzWmTFXhJjwJcuGr74P/slIoCsueSwKSmXtSsT5O5pgtfZahkzFMWfW7X6RTo/
         wmo6sRZZdKhTth4IWvdAQ4rZYvT3p3MQbZEne5p9hb8gtyScrrJadzhciBSvrP/Xf+P6
         zydRCmgrmAfU37/ySuDnz/X/0f5pOLIrnZ6aOuY80fH9cwGLHHEZOmqky2MItK1yRY9Y
         XP/FDhnLhVcS8r8RJdlCCov7Zy7h9ucMdlKzjZpTi9uaUdEUpHQvBa2EdEm6WP1Dc+ZL
         rqGxkI9CGtr2d2nnBCaktXK2/3HkWmq7WHAa/F7jy2g+d6mxEY3LC328upS9nrc6HBOw
         mDfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L5WHjWbB2eCnk9Dii6Pao2b6Ng5hoJqKlbrupLfgAiE=;
        b=oQSy8i9Hb5ERK57NB7k4wNmlvUUlO8oC1p1PuoIucCwFy4wNE8sgECnF0hRkvpZltc
         clwGcp1EjxcrWH1aDc8OigBrd5BLSO9zi1v/sCR/XY9lKTd5e73lh9KshKGzkRkJqaEo
         Hasfx+Ipi5hHvs9OHYM7WSccBpsxRDA/++3WETUS5ogJVjBewfLRdH++LOfLkX0UVFXM
         jFljRDvqIhtzm5VizXC62mJxsg2nGjjM9mvgte+n9SF/ySs0plLknnpB1EPEfzANnKKQ
         eO+XHX/KREFwm7rctRX5ct6TAJ3hBkW/TXtSScTKi+evb4sF0Dl2/n5S3tETF/6Nxlxu
         V4Iw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533fyTU/Ypb222iODRUWpvXmvn9ltf+MNCMLSCC6OrYTc2QHZZSD
	WjD1f3qNoWsue44t1FxT77A=
X-Google-Smtp-Source: ABdhPJxyaBLmrR+H/DT0E/37hE6yA6NaUlltXA/ajtyLUcB1RyrWIt3A4sVUUGJz72touTDoyaZ7YA==
X-Received: by 2002:a1f:1988:: with SMTP id 130mr6765126vkz.20.1589664646405;
        Sat, 16 May 2020 14:30:46 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:80cf:: with SMTP id b198ls687199vsd.3.gmail; Sat, 16 May
 2020 14:30:45 -0700 (PDT)
X-Received: by 2002:a67:8bc3:: with SMTP id n186mr6789643vsd.67.1589664645884;
        Sat, 16 May 2020 14:30:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589664645; cv=none;
        d=google.com; s=arc-20160816;
        b=yXbbQPR1sD6lZp6n9kKqk9VVzHJIWYfzX8fqtqCCq0CnOjq05450G4+bcimxg54hyQ
         GNCIK8nwIoyEuImskP9wwZA8A5Ku3I0Qw3E3r9KfYCXrzTFEBzxy+gqWhMA0EOQAY1CG
         +ipj+02NaPxNrIkU/rko6c/dx/k6T08EcJRHMbwakTvgCaydeq1rwpgd9eUC1IheG4S6
         hhp1e+cnNfEEegxlXG+qshFfe2tdCi1ovDbdNUBANC1rgL1IyHSPrgY6MYRfzmWGpIJB
         Pd3qrE+pj+vea43xLi8EIflpIFpjUuJuVITjxd8TIPJG8rYhJMO+R9nZVltrgrg00JiB
         jsQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=k2JtqftW392peW4oCYSkm2T2PGLde+8oDyD9E3kXQRg=;
        b=gHdOzYhcfTAwU5jlCR1dzYgklamB+cxakcACPMES7rxoMkKQd1QA8wip44Tx6jJ6eM
         8l4bxRFKdm9zkEa2yC+eijAOItE6JIfbux9rmgggfL0P3tn2UX9gQtP1D5fbzaKo85/8
         sMOw+w7yxgvx/cicxdZOlb84C12n9c/nM/2bdKjrxIDcpjQRgD2jGDT0+t7n6xe70xP0
         mnxk281cCiISjqqB/6Ky86ogXqZBDS0iHAEbCUaDCA1fWQxXC2pwFUJ+Q+m9+dNM3oCU
         JgIn65NKYK2+FebBCpW/h2DFkODGNUOb9QvhAMCvaYPMH2mtYo7VDjDVEqfltTIUWJq3
         s2nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qOjWG/Up";
       spf=pass (google.com: domain of zaring.kkipkalya@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=zaring.kkipkalya@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id c14si477535uam.0.2020.05.16.14.30.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 May 2020 14:30:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of zaring.kkipkalya@gmail.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id a7so2117998uak.2
        for <linux-ntb@googlegroups.com>; Sat, 16 May 2020 14:30:45 -0700 (PDT)
X-Received: by 2002:ab0:89:: with SMTP id 9mr7056508uaj.96.1589664645510; Sat,
 16 May 2020 14:30:45 -0700 (PDT)
MIME-Version: 1.0
From: Donna Louis <dlouisemclnnes1@gmail.com>
Date: Sat, 16 May 2020 21:30:22 -0700
Message-ID: <CANmOZ0z2-n7Y3PThSUYb-VM-B5pgGW+t0O74Bp7bn5U-2FYLmw@mail.gmail.com>
Subject: HELLO DEAR FRIEND,
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000081fd0205a5caa4ca"
X-Original-Sender: dlouisemclnnes1@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="qOjWG/Up";       spf=pass
 (google.com: domain of zaring.kkipkalya@gmail.com designates
 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=zaring.kkipkalya@gmail.com;
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

--00000000000081fd0205a5caa4ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello My Dear,

May the peace of almighty God be with you and your family. I know it will
be a great surprise reading this message from me today. Please  I want you
to consider this as God divine intervention and opportunity which I
believed that You and I can cooperate together in this humanitarian project
for the glory and honor of God the merciful compassionate.
My names are Mrs. Donna Louise McInnes, a widow and I=E2=80=99m suffering f=
rom
brain tumor disease and this illness has gotten to a very bad stage,
without any family members and no child. I hoped that you will not expose
or betray this trust and confident that I am about to entrust on you for
the mutual benefit of the orphans and the less privileges ones. I have some
funds I inherited from my late husband, the sum of ($ 8.450.000.00 Eight
Million Four Hundred and Fifty Thousand Dollars) deposited with the Bank.
Haven=E2=80=99t   known my present health condition, I decided to entrust t=
his fund
under your custody believing that you will utilize it the way i am going to
instruct herein, for orphanages and gives justice and help to the poor,
needy, elderly ones, disables and to promote the words of God and the
effort that the house of God will be maintained.
My dear, all I need and required from you is your sincerity and ability to
carry out the transaction and fulfill my final wish in implementing the
charitable project as it requires absolute trust and devotion without any
failure and I will be glad to see that the bank has finally release and
transfer the fund into your bank account in your country even before I die
here in the hospital, because my present health condition is very critical
at the moment everything need to be process rapidly as soon as possible.
Meanwhile It will be my pleasure to compensate you as my Investment
Manager/Partner with 30% percent of the total money for your effort in
handling the transaction while 70% of the money will be Invested into the
charity project there in your country. Meanwhile I am waiting for your
prompt respond, if only you are interested for further details of the
transaction.

May God Bless you for your kind help.
Sincerely Yours beloved Sister in Christ Mrs. Donna Louise.

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CANmOZ0z2-n7Y3PThSUYb-VM-B5pgGW%2Bt0O74Bp7bn5U-2FYLmw%40mail.gmai=
l.com.

--00000000000081fd0205a5caa4ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello My Dear,<br><br>May the peace of almighty God be wit=
h you and your family. I know it will be a great surprise reading this mess=
age from me today. Please =C2=A0I want you to consider this as God divine i=
ntervention and opportunity which I believed that You and I can cooperate t=
ogether in this humanitarian project for the glory and honor of God the mer=
ciful compassionate.<br>My names are Mrs. Donna Louise McInnes, a widow and=
 I=E2=80=99m suffering from brain tumor disease and this illness has gotten=
 to a very bad stage, without any family members and no child. I hoped that=
 you will not expose or betray this trust and confident that I am about to =
entrust on you for the mutual benefit of the orphans and the less privilege=
s ones. I have some funds I inherited from my late husband, the sum of ($ 8=
.450.000.00 Eight Million Four Hundred and Fifty Thousand Dollars) deposite=
d with the Bank. Haven=E2=80=99t =C2=A0 known my present health condition, =
I decided to entrust this fund under your custody believing that you will u=
tilize it the way i am going to instruct herein, for orphanages and gives j=
ustice and help to the poor, needy, elderly ones, disables and to promote t=
he words of God and the effort that the house of God will be maintained.<br=
>My dear, all I need and required from you is your sincerity and ability to=
 carry out the transaction and fulfill my final wish in implementing the ch=
aritable project as it requires absolute trust and devotion without any fai=
lure and I will be glad to see that the bank has finally release and transf=
er the fund into your bank account in your country even before I die here i=
n the hospital, because my present health condition is very critical at the=
 moment everything need to be process rapidly as soon as possible.<br>Meanw=
hile It will be my pleasure to compensate you as my Investment Manager/Part=
ner with 30% percent of the total money for your effort in handling the tra=
nsaction while 70% of the money will be Invested into the charity project t=
here in your country. Meanwhile I am waiting for your prompt respond, if on=
ly you are interested for further details of the transaction.<br><br>May Go=
d Bless you for your kind help.<br>Sincerely Yours beloved Sister in Christ=
 Mrs. Donna Louise.<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CANmOZ0z2-n7Y3PThSUYb-VM-B5pgGW%2Bt0O74Bp7bn5U-2FYLmw%=
40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goo=
gle.com/d/msgid/linux-ntb/CANmOZ0z2-n7Y3PThSUYb-VM-B5pgGW%2Bt0O74Bp7bn5U-2F=
YLmw%40mail.gmail.com</a>.<br />

--00000000000081fd0205a5caa4ca--
