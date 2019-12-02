Return-Path: <linux-ntb+bncBC2JZAF5RIIBB3OYSTXQKGQEWZ5AXGQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEE010EC3C
	for <lists+linux-ntb@lfdr.de>; Mon,  2 Dec 2019 16:23:26 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id n80sf10426030ybf.18
        for <lists+linux-ntb@lfdr.de>; Mon, 02 Dec 2019 07:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=B5BZNwYX8+S4NF0oEapO8Ymi00ifQqQPulf1qbGGd8c=;
        b=r/sggV5+Rw1DR29RdVqOQ3+Uy1mA7e4AY+Uh1tkmRhsrdcWl61Er28cgdGu9Bv8wEi
         ikC99PLtYQX1RkIMUPE9Dn+DCUOaE0h5WMWP9sNxkehh8KuEvh1AtC8XhFZ3c+MUfJNI
         W1LHOZAIMtSIctaB8j6D141d3u0IAjp6S3OqHJShxTTM0fle5L/WUj3fScIZVRX5gMBq
         g8A7LvGfN4316aAYXY2fYcAACuEwqN0tpn2U7dsOM3foNd3oB/qrXJ90jeAc/+FgUfDP
         6eDLSuY+6+tc2yfrdRYlBG0b9JJr/K3gDB2auLWUUhC06I+X9TW7gelfgVXFPAplYbZr
         952A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B5BZNwYX8+S4NF0oEapO8Ymi00ifQqQPulf1qbGGd8c=;
        b=gnRJ75L4k9QcGpgqJ7gnVGcApBVQL28jyjMyR4Nz6rnq0b7azgi4jjnRRc8uELfY/a
         zdG/AMnt7KcAeIBgMfBIRu1MHio7i21V+cCg+qeb1BV0fKc6Vxigt5YTRtaWisiWaS9f
         hVKzZuUht/7yZdSHsQ4P5lG5my3+72LpDuQsnUxbbsFdCs//em4HwKEnSl0epSmNfttS
         XSQIJ6KchM3c+/IdBnY0UmCKLBKSugwWrWjmCNLu0aMiwoEhL6yyZmwoEfQxnnSxlXcc
         KIUoBn198VQDybe9QkR/4u4sYi3tpih8s5L9XyWR0wfMk+CCOgEOmOIrQhVeou7K+/5u
         zSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B5BZNwYX8+S4NF0oEapO8Ymi00ifQqQPulf1qbGGd8c=;
        b=OXSZwdaNnFdxr4j/5uwZyqVZWrdi77YMOVjP03U4fCW/4nsFvHQ7w8h19CYtIYS+15
         Z833lSGUdCHhsogYusV7f/MgKjZ03iqgbgdXM8hB3skLx67qlNTAh/r6QangnJhQ7RQx
         5kwNI0jaIC8RNo/qCqUxRPthIjWe+Pfnd4hePKnkz3HYd4uFhE8dsPtxlODOePpDyQdH
         Cx+afbNsSh1fXWy3VK/cH+eNckhbfD1DlX0cjO7OcRT57R/1SPw6SowXp53kSnpTSKLw
         3mrPugHGf2Xz6DlBteGsi6kWwCvlveyvF8gH1wCmXYsDPRbX5aWCBshMQIctS71btw+A
         8x1g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUbNcEqojU7d5NGw/4DZd4pxvXklEfZweHDpavbPggnqWG9QIzS
	npSTyzk8CoFqRiFbuNJjLYU=
X-Google-Smtp-Source: APXvYqyrIUtbnl2RmyJ0G4dzatDJfRfFXE/RdjGFI4iW8J5bJD/lsXzN136zn7EKZJ3X51gxXdvmjg==
X-Received: by 2002:a0d:e10b:: with SMTP id k11mr8222318ywe.105.1575300205336;
        Mon, 02 Dec 2019 07:23:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:3dc7:: with SMTP id k190ls5766205ywa.8.gmail; Mon, 02
 Dec 2019 07:23:25 -0800 (PST)
X-Received: by 2002:a81:7606:: with SMTP id r6mr23157068ywc.418.1575300204598;
        Mon, 02 Dec 2019 07:23:24 -0800 (PST)
Date: Mon, 2 Dec 2019 07:23:23 -0800 (PST)
From: lravich@gmail.com
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <e71c7a5d-ad80-46c4-b76c-7a6fba4fe666@googlegroups.com>
Subject: Physical continues memory for NTB
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4163_1075273769.1575300203965"
X-Original-Sender: lravich@gmail.com
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

------=_Part_4163_1075273769.1575300203965
Content-Type: multipart/alternative; 
	boundary="----=_Part_4164_479213502.1575300203965"

------=_Part_4164_479213502.1575300203965
Content-Type: text/plain; charset="UTF-8"

Hi guys , 

I would like to get your opinion regarding NTB memory windows usage in a 
production , 
most of my experience is on Intel Skylake NTB which is limited to 2 NTB 
memory windows and has hard  restrictions

the naive way to use NTB is to set translate windows to all the physical 
memory rage, this way entire physical memory will be exposed to peer node , 
call me a paranoid but I not feeling this is the way to go , 
the other way is to expose only relevant part of memory  but such memory 
should be physical continues memory  (trying to avoid going to IOMMU 
direction) to get such physical continues memory I cant use 
kmalloc  or other slob friends because they are limited in max size and 
anyway the chance to get such a big chunk after init is low, so the only 
way I see is to reserve the memory on kernel init , 

currently known to me technics to go this way:
1) "out of kernel memory" (memmap boot parameter) , this is the easiest way 
to go but we getting out of kernel memory , which has its disadvantages ex: 
there is many flows in kernel based on pining memory with get_user_pages 
which will fail with  "out of kernel memory" 
2)  CMA -  this feature support only generic memory region allocation with 
boot parameters  which will be shared by all dma allocs in kernel (at least 
for Intel) , anyway looks like overkill for my simple requirements.

love to hear your opinion guys , 

Thanks
Leonid 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/e71c7a5d-ad80-46c4-b76c-7a6fba4fe666%40googlegroups.com.

------=_Part_4164_479213502.1575300203965
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys ,=C2=A0<div><br></div><div>I would like to get you=
r opinion regarding NTB memory windows usage in a production ,=C2=A0</div><=
div>most of my experience is on Intel Skylake NTB which is limited to 2 NTB=
 memory windows and has hard=C2=A0 <span style=3D"color: rgb(51, 51, 51); f=
ont-family: Assistant; font-size: 14px;">restrictions</span></div><div><br>=
</div><div>the naive way to use NTB is to set translate windows to all the =
physical memory rage, this way entire physical memory will be exposed to pe=
er node , call me a paranoid but I not feeling this is the way to go ,=C2=
=A0</div><div>the other way is to expose only relevant part of memory=C2=A0=
 but such memory should be physical continues memory=C2=A0 (trying to avoid=
 going to IOMMU direction) to get such physical continues memory I cant use=
=C2=A0</div><div>kmalloc=C2=A0 or other slob friends because they are limit=
ed in max size and anyway the chance to get such a big chunk after init is =
low, so the only way I see is to reserve the memory on kernel init ,=C2=A0<=
/div><div><br></div><div>currently known to me technics to go this way:</di=
v><div>1) &quot;out of kernel memory&quot; (memmap boot parameter) , this i=
s the easiest way to go but we getting out of kernel memory , which has its=
 disadvantages ex: there is many flows in kernel based on pining memory wit=
h get_user_pages which will fail with=C2=A0 &quot;out of kernel memory&quot=
;=C2=A0</div><div>2)=C2=A0 CMA -=C2=A0 this feature support only generic me=
mory region allocation with boot parameters=C2=A0 which will be shared by a=
ll dma allocs in kernel (at least for Intel) , anyway looks like overkill f=
or my simple requirements.</div><div><br></div><div>love to hear your opini=
on guys ,=C2=A0</div><div><br></div><div>Thanks</div><div>Leonid=C2=A0</div=
></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/e71c7a5d-ad80-46c4-b76c-7a6fba4fe666%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/e71c7a5d-ad80-46c4-b76c-7a6fba4fe666%40googlegroups.com</a>.<br =
/>

------=_Part_4164_479213502.1575300203965--

------=_Part_4163_1075273769.1575300203965--
