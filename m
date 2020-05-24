Return-Path: <linux-ntb+bncBCIMFGFQZQKBBKWSVP3AKGQEUXQKQFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BE11E0336
	for <lists+linux-ntb@lfdr.de>; Sun, 24 May 2020 23:37:48 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id i190sf15614939ybg.6
        for <lists+linux-ntb@lfdr.de>; Sun, 24 May 2020 14:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cZjp5ZrFmz7d+eC29AiMmigYb99lfPpKz2MtIsspmHw=;
        b=taWBEicSR5xQ1wqR7or4Xt+biwRIJ1sykyD7VHiuWip5fbbJfu/WpCcy5aPia21Kc9
         NFNRUTbmwTP+h7OjUw2CfP+7LU41VaOc1LhVfngwZoED8WNv483KfAeQLPngblUGQH8Z
         Np3yt6falq/9bknR7TB7ObZx6KAeCLu+X9dnhvD+23goz4+YidKkiK0JIx7L/CCVrLFc
         Ip650FcMWYipenlU8nXavv91E2AAeAkXIxY1+KAUzDVS+tlEZK/lS14/vGbsjTqUgzUS
         tZdm+NcSW7FRz1pHtx4SRzJ5GiQ7oyzFaeyRM1NqEhRQNvblxWfOnIgJpgafp0Bdn8DV
         doGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cZjp5ZrFmz7d+eC29AiMmigYb99lfPpKz2MtIsspmHw=;
        b=DRy0cjGFhH5xKTP0Dzisph43VfKrZnaz4MLxbqgPjO1y6CJ67P3B2QGLrYuDuSnLV8
         qQXGrVTWirxncb5UmJddMkoOWQWZSPJ7Q4REIfrhg2HQC35lj+lz92Mk+aXUwkLr9k47
         izTdMpV0R2DN+ru8LIA5vs4Gm5uTbTLdEBUxXc4OFpTKxZpCjPG7rRSo/pZPaTSd/7Mx
         NB89ker7gZcct0qPfWMdFNCUbEv8xxlVirAI1PyEMfXNmD7aPIYHJEHgHHxW0q7fL8vw
         75nYWhpvY/L61bsFC5rXp+f9VnyU81E+VJPxRAdQBJCj4tP4BKch9+CVsOHOhkuAnGD/
         LYIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cZjp5ZrFmz7d+eC29AiMmigYb99lfPpKz2MtIsspmHw=;
        b=f55PGsymOLHFgGjMH0wYPIfJdAK3jfLW6zlWODaBMjNKfWXI1amus2nsjkUVQiNS8e
         zfXSqrt45JxI3kdzoY6oREG7JlJiNyl1egILM3ZLUedVdPmrkDn3dQhxN2NS/h/Efrxn
         xvMisiXr7NNb20Qc1q5TADLhWxcpKXU3Xr2AxaDBmHiF0WY/01xAyJZ7l4KwyPV7YAjT
         3SwS1X/HcATVwMQB8MW78SfzuRKcyfM06J27raH/m7vGJJvGxUUAYhj+J5D9UOAIDEOh
         nuspRGzub8RM42crpQtfS2wixLn4WDyUmUAU1U5qJyLeDLG1JQloZ6UUL/Y5QDFz4LIj
         a1hQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532kw46SHQuoQY0i+MEMjafLc5cW7l1Bz9tef+QGLnHFLtSWqyap
	NevvC0J+I1J+IL93SN+Mu/0=
X-Google-Smtp-Source: ABdhPJxOkCA69dHCuzZt3VIwSFnhaanoiHfn7u0sLVKruYBL16Gczg3YQCSI0E0TJNJKazMCVMb1JQ==
X-Received: by 2002:a25:658a:: with SMTP id z132mr38884309ybb.429.1590356267013;
        Sun, 24 May 2020 14:37:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:75d6:: with SMTP id q205ls2496592ybc.4.gmail; Sun, 24
 May 2020 14:37:46 -0700 (PDT)
X-Received: by 2002:a25:244a:: with SMTP id k71mr28793310ybk.143.1590356266060;
        Sun, 24 May 2020 14:37:46 -0700 (PDT)
Date: Sun, 24 May 2020 14:37:45 -0700 (PDT)
From: Anubhav Guleria <anubhav.nitsri.it@gmail.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <ca1ae048-bb3d-4aec-8d89-17178734f097@googlegroups.com>
Subject: Using NTRDMA with Intel Skylake in b2b configuration
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1290_300045457.1590356265525"
X-Original-Sender: anubhav.nitsri.it@gmail.com
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

------=_Part_1290_300045457.1590356265525
Content-Type: multipart/alternative; 
	boundary="----=_Part_1291_770982628.1590356265525"

------=_Part_1291_770982628.1590356265525
Content-Type: text/plain; charset="UTF-8"


Hi, 
I am trying to setup ntrdma(https://github.com/ntrdma/ntrdma-ext) with 
Intel Skylake b2b configuration and Linux 4.14.178. 
Following is how my memory windows are setup:
1) MW[0] (BAR23): dma_alloc_coherent 
2) MW[1] (BAR45): memremap

Further, what I understand that in case of MR registering there are 2 
steps[ntrdma_reg_user_mr()]:

1) Call ib_umem_get() to Pin and DMA Map userspace Memory.
2) Then, prepare a memory buffer in a NTB window, by ntc_mr_buf_map_dma(..).

The doubt that I have is that is it necessary to have the dma_addr from 
step 1 to be within the limits of NTB window, in this case MW[0] ?
And if so, is there some specific configuration that needs to be made?

Also, is above configuration of MWs correct?

Thanks in advance.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/ca1ae048-bb3d-4aec-8d89-17178734f097%40googlegroups.com.

------=_Part_1291_770982628.1590356265525
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>Hi,=C2=A0</div><div>I am trying to setup ntrdma(h=
ttps://github.com/ntrdma/ntrdma-ext) with Intel Skylake b2b configuration a=
nd Linux 4.14.178.=C2=A0</div><div>Following is how my memory windows are s=
etup:</div><div>1) MW[0] (BAR23): dma_alloc_coherent=C2=A0</div><div>2) MW[=
1] (BAR45): memremap</div><div><br></div><div>Further, what I understand th=
at in case of MR registering there are 2 steps[ntrdma_reg_user_mr()]:</div>=
<div><br></div><div>1) Call ib_umem_get() to Pin and DMA Map userspace Memo=
ry.</div><div>2) Then, prepare a memory buffer in a NTB window, by ntc_mr_b=
uf_map_dma(..).</div><div><br></div><div>The doubt that I have is that is i=
t necessary to have the dma_addr from step 1 to be within the limits of NTB=
 window, in this case MW[0] ?</div><div>And if so, is there some specific c=
onfiguration that needs to be made?</div><div><br></div><div>Also, is above=
 configuration of MWs correct?</div><div><br></div><div>Thanks in advance.<=
/div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/ca1ae048-bb3d-4aec-8d89-17178734f097%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/ca1ae048-bb3d-4aec-8d89-17178734f097%40googlegroups.com</a>.<br =
/>

------=_Part_1291_770982628.1590356265525--

------=_Part_1290_300045457.1590356265525--
