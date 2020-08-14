Return-Path: <linux-ntb+bncBDD4ZJP5SUPBB7MD3P4QKGQELXJG2XY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F82A244D2A
	for <lists+linux-ntb@lfdr.de>; Fri, 14 Aug 2020 18:55:26 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id f59sf7384462qtb.22
        for <lists+linux-ntb@lfdr.de>; Fri, 14 Aug 2020 09:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597424125; cv=pass;
        d=google.com; s=arc-20160816;
        b=BKJtCVCbcyYIU9za+zwZBuZoBT9O+Y89twVPD8/2ofhwzDgA/Y9Elw4c7pZdoe998l
         RJ5BqWLf3ucB4AmfoKaVt0E3COnkSMOimLayEiw9n3f0F6xMsFsNk3d5AJNENmehk8la
         akivXPglBDbPcmzOj7OBgm/MxhrMp9rcWDFKHD548bOLEt2TTABp3pRUjZ2gWvyuZR4P
         1hVApw1uN+flFO3qcTyXZfL3H/jmKzjqNesdKwbSrlZ+1eUuF9IHyZB5GRuaVwho/LVv
         ECQWwGcx4gJToofYcedXBJWEbAQsVNwS0JSiyRmZW9b9CQdIrjAFnXjFV/4hr2p1Z6Tn
         R3PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Oe8oKF/a5/zaoVfQKr2WhaOpmheaoDXaWsRWdAwKCGs=;
        b=Wpj8uWDga9KRuoe+e7as3apX1t1FIJMTF7jdmoi7VfS2h1J5bvIKj603ZubpRi8f+1
         Tmvz4q5O2xA0X09FTLh7AEUqFGqe6HvAcohhxAuhUmIlJPyXmoscILZt/HsMXND34sH8
         jSeLb0mt2lY2YyNo9UMxfgnH1APQpOljde5OQqQlnbgowqxGVWkJGqGOPGyn1vr1YUp4
         VJfBOuQU28R/ztkFIgHdGS7bSIHCIMXbKJ0vakhS0YA11CK/CHytt9QJHvQmX3z6BNod
         cgXzwc92lyQ3hG0hQRpMGtQIucPhDMhtLKf1+1PV2UvmjjOnuU35DlOmCt1om8HqtHtK
         PfWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kk1JWl5Y;
       spf=pass (google.com: domain of aishagaddafi190@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=aishagaddafi190@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oe8oKF/a5/zaoVfQKr2WhaOpmheaoDXaWsRWdAwKCGs=;
        b=dpnexczfMSYnSAGpvWqeYrfNt3ENNXFdJRrQZnm9l/lmHlWcicoCvvVN/SQgkfYKLu
         gv+55shr3/xiAlzRtseOJor/RenL8PxesSdEE5CCRarudQqc0rsPByjMwLbNXUxpoLHA
         mw2Qi3YtnzN1R21J5baOqpI3KDdbiAUu29R+/C1DDLk4n6PS8/q1opLHQ/PH+9at6vc2
         VmDteGcCry8qlzKnYIfgX21FpmY8RR1TASjmy3A6u7svXIwo7H0wOoizmMZGWX7lNuwy
         awWqWSBJJdWpdiWIzLiweN95ER7IvDs+8jmJOV7FTrkp1hr8YKhLK8PBZDltRP3IV27k
         sgzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oe8oKF/a5/zaoVfQKr2WhaOpmheaoDXaWsRWdAwKCGs=;
        b=D4HmvXV6QIQjrTRCwYN+aV133Tlox8sWXyLXATjo0MafY6oAZRcJi4YFIWTV/R2IMe
         3TzuAoYUDnGQZB+86K4MBYPxU2fNuXQk+DxcezZS3IMyG6mc/93mBgVQi/1XNAPR2xKj
         GT1m1AMnJ+nvWEL1pIb5KjkFj0TDlakQA5mh/V+Uo9SjaFaKFjXPpFfjkO8anNWos7fq
         rB+SppZJ43wJSW186a8nBGRpCcfieUORevJ/0PgwSPSod8e4/Nn5sxSps87/hP9Y+O/3
         fo1ISVgd26pMrj7aIKP6ZvRogMet3aOkp8OhId1K78ccdTIZHDaSy3EAx+GTuGctgKr0
         ZI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Oe8oKF/a5/zaoVfQKr2WhaOpmheaoDXaWsRWdAwKCGs=;
        b=OGraCxQnp5jhsgNg7V+H5gImGiNPCk42qSTCIacP2/kI0IbUxHnXjO+6tCvOrzs0Dj
         pz3fJS8K0NPfmQjpjKWjz4PcbFmEydocEUlBzQeHJ4ETPmEjRYTg6nOMfW1UXw05gJlK
         3xeo72rx2tsk6fgSy0wpQ1mBUyv12213tGl1R7WVRkv/Bubc3pFSDFQA+/EDSVac+z+R
         ovUwW1kRoFV4qMEow+MaW0rRrzla6HBHDRf+dQ/jz8PszStYkxKoiP2ji9ggPqwq/y62
         l4DMrs804XrO9VrHgvI2/1rC32qoy2NXK1HjWh5lOuAx8jTQjw0pxutJOYL9eLts2v4R
         hgRw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Kkcufd6Njcknir4JCytXkYFA2EHTTIqI9xtFUnqJgI0DE0DsT
	FRPzgYSijUOEKISerTH/gKU=
X-Google-Smtp-Source: ABdhPJwQgVVKlNrHTHMbH2s6sjMHTnR6q3YgUJTKR4h6p+4lUuB1nY2DSYKWsKldGsKJYlzim30hvg==
X-Received: by 2002:a37:910:: with SMTP id 16mr2740829qkj.466.1597424125168;
        Fri, 14 Aug 2020 09:55:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:f408:: with SMTP id y8ls4413607qkl.6.gmail; Fri, 14 Aug
 2020 09:55:24 -0700 (PDT)
X-Received: by 2002:a37:9d44:: with SMTP id g65mr2814845qke.96.1597424124813;
        Fri, 14 Aug 2020 09:55:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597424124; cv=none;
        d=google.com; s=arc-20160816;
        b=njl0xj2tOdK+DSq3X55+ivLbgVMcG/DqE5lv1xgMRE3D+x3qRyPAQgXL4dIN2RSLMY
         y1Y+fnKyRlHDxGpUEqLx7sHnHvdJCBg8CDftBC4ub0SS0MMhcMKtygsVBv/kG36P9qVz
         JdBgtX+/7OUcik0MzRVRhVV+VhfM6yTVHRLyaF0yp/LN+mLtvAs1TAiYvP+GoMqmcoLn
         cYFa72IrRn7Zeqzw9c0OVqLu5pMZWyi3g/UbjvuP4JrsWhuF6h4cc0fMxaayCxxGqpGr
         KP6na1rxjiKLb+kO1LU9MyfsufXXk6227mbb6wiq3/DnPzVrkVvoflXIX7GUKzBLFi/G
         grOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=hEkR1aiV3FgqWifUDRZ/LnwAKRgtXp8YBx05IH2xt3I=;
        b=X2CvcuLgJyLWomFtQ/E6DnT60L1VDEzZ7p9fJZL2Kabx0Nf5TIFJm40gYVdBzNrcIw
         l/BHZ/arOtIB7egMd2WTsMn80osW7vCLqNg12ST3CxFxxgcDhlzmCW6DWw+j/lx2m2hG
         qukjGp8eoarwFH4rFNEP/nDrVjv7CDTEboXLggfazz9Sd5x/4QMV8RNi/VJSxBwiz0Q4
         /1s+glas14TmgiMvQzsrFeS4/7JAUB5dIBjIiA+tBtioWn1N9Lgnxn4ePpMiWPnZd5TE
         +GwoQNmROQ28bmT8E5ZohGMHCE2kTlbIYEMvKw+G0ZBDSrgYTPXcIeBzVgSLtomkOfCq
         T0/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kk1JWl5Y;
       spf=pass (google.com: domain of aishagaddafi190@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=aishagaddafi190@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id n26si527986qkg.5.2020.08.14.09.55.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 09:55:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishagaddafi190@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id q9so8076679oth.5
        for <linux-ntb@googlegroups.com>; Fri, 14 Aug 2020 09:55:24 -0700 (PDT)
X-Received: by 2002:a9d:4b01:: with SMTP id q1mr1587943otf.15.1597424124293;
 Fri, 14 Aug 2020 09:55:24 -0700 (PDT)
MIME-Version: 1.0
From: Aisha Muammar Gaddafi <aishagaddafi190@gmail.com>
Date: Fri, 14 Aug 2020 16:55:09 +0100
Message-ID: <CAJVkJvmUc78HpBEOLJ0VmHngGiwnMx=f=fHCkzJz=Fii=w0_iQ@mail.gmail.com>
Subject: Dr Aisha Muammar Gaddafi
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000007bf81605acd9497a"
X-Original-Sender: aishagaddafi190@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kk1JWl5Y;       spf=pass
 (google.com: domain of aishagaddafi190@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=aishagaddafi190@gmail.com;
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

--0000000000007bf81605acd9497a
Content-Type: text/plain; charset="UTF-8"

As you know I'm Aisha Gaddafi the daughter of the former president of Libya
late president Muammar Gaddafi who was killed in the civil war which took
place in the year 2011 which ended up his life on the 20th October
2011.Before the death of my father the Late President of Libya he made a
deposit of 10 million US dollars with a security company there in Ghana .
That no one knows about except we the children and now my brother is in
prison for trial for war crime so i am the only one left out and i got an
mail from the security company , that i have to come for the funds but now
i can't because After the death of my father the UN and Libya Government
has been tracking all my father's wealth and money everywhere around the
globe my dear but, this was the last deposit my father made before he
died,so i am looking for a trust worthy person to stand as my foreign
beneficiary to help me claim the funds and i am ready to reward  whoever he
or she may be and i will also let the security company  know that i am
appointing the person as my beneficiary, and help me receive my funds from
the security company  so i can come out of my present ordeal and to go
somewhere to start a new good life somewhere my friend....Please i will
love to read from you and let me know if you will be able to help me with
this and i promise that this transaction will be smooth and free there is
no need to be afraid and please this must be a secret between  both of us
hope to hear from you soonest.

Best Regards.
Dr Aisha Muammar Gaddafi

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAJVkJvmUc78HpBEOLJ0VmHngGiwnMx%3Df%3DfHCkzJz%3DFii%3Dw0_iQ%40mail.gmail.com.

--0000000000007bf81605acd9497a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(38,40,42);font-family:&quot;Helve=
tica Neue&quot;,Helvetica,Arial,sans-serif;font-size:12.8px">As you know I&=
#39;m Aisha Gaddafi the daughter of the former president of Libya late pres=
ident Muammar Gaddafi who was killed in the civil war which took place in t=
he year 2011 which ended up his life on the 20th October 2011.Before the de=
ath of my father the Late President of Libya he made a deposit of 10 millio=
n US dollars with a security company there in Ghana . That no one knows abo=
ut except we the children and now my brother is in prison for trial for war=
 crime so i am the only one left out and i got an mail from the security co=
mpany , that i have to come for the funds but now i can&#39;t because After=
 the death of my father the UN and Libya Government has been tracking all m=
y father&#39;s wealth and money everywhere around the globe my dear but, th=
is was the last deposit my father made before he died,so i am looking for a=
 trust worthy person to stand as my foreign beneficiary to help me claim th=
e funds and i am ready to reward=C2=A0 whoever he or she may be and i will =
also let the security company=C2=A0 know that i am appointing the person as=
 my beneficiary, and help me receive my funds from the security company=C2=
=A0 so i can come out of my present ordeal and to go somewhere to start a n=
ew good life somewhere my friend....Please i will love to read from you and=
 let me know if you will be able to help me with this and i promise that th=
is transaction will be smooth and free there is no need to be afraid and pl=
ease this must be a secret between=C2=A0 both of us hope to hear from you s=
oonest.</span><br style=3D"color:rgb(38,40,42);font-family:&quot;Helvetica =
Neue&quot;,Helvetica,Arial,sans-serif;font-size:12.8px"><br style=3D"color:=
rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-s=
erif;font-size:12.8px"><span style=3D"color:rgb(38,40,42);font-family:&quot=
;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-size:12.8px">Best Reg=
ards.=C2=A0</span><br style=3D"color:rgb(38,40,42);font-family:&quot;Helvet=
ica Neue&quot;,Helvetica,Arial,sans-serif;font-size:12.8px"><span style=3D"=
color:rgb(38,40,42);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,=
sans-serif;font-size:12.8px">Dr Aisha Muammar Gaddafi</span>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAJVkJvmUc78HpBEOLJ0VmHngGiwnMx%3Df%3DfHCkzJz%3DFii%3D=
w0_iQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/linux-ntb/CAJVkJvmUc78HpBEOLJ0VmHngGiwnMx%3Df%3DfHCkz=
Jz%3DFii%3Dw0_iQ%40mail.gmail.com</a>.<br />

--0000000000007bf81605acd9497a--
