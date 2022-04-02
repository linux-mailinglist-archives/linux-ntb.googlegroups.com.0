Return-Path: <linux-ntb+bncBDM7RQV2QAERBKPWUKJAMGQEUW4VWRQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4954F065C
	for <lists+linux-ntb@lfdr.de>; Sat,  2 Apr 2022 23:07:53 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id 189-20020a1c02c6000000b0038e6c4c6472sf432220wmc.1
        for <lists+linux-ntb@lfdr.de>; Sat, 02 Apr 2022 14:07:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648933673; cv=pass;
        d=google.com; s=arc-20160816;
        b=xTE980FSQ1xtaLEKfbmq2IB9QsfTTztI7u7A8Tm3Ny0bVIz7x3wHuZL9qR9PGhVPHD
         siezmubitWnDRpx/5QoVZdBKNftWWDSdMyttNFUYxQKuHAAehLxotsu2Azgl3IQrtyoq
         mKm7tVBcLpZT1GdTCkd0z2Y4knJRY3QjpruT3EBXKrr2LsfYMcz+xw+GJclKVKEt8qru
         olgEOGdjWf7M/qUx38EzD2AFdfw2XenuXZV8aojStcZ1v90wupevXTDqK3067YHSUC4J
         tYe04fzqIYRf7D1H+mARFsB8GoGHu+V8K31cB0klTyCh+CJdnPTKfmvrMuFqjvxMWzmT
         5J3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=PVhqEgEmNh+QHtTct6aoXrBAvxr3Js1Ktb7PmRgUJ+8=;
        b=ZRCfoMpxPgLOLwHfIRzJJsl3BKNNaThaVxY7vDtxLSdSPGguZeA75uIUldjj49Ydm8
         rArUZO1/q9n6L9VL3s6itWvq0/wYJx4X7tboGmQOJ4rPOthm3uCF3cb61q+kuU/UuSwL
         B2j6qRjslRFDej8WF6PWgTun0rhTr0XfX1ihF53JB8BHiJri7BTa7Q4P6HAG8z82cY0Q
         WtSr9n0XHxojVYEgMMvs70h/PIlx6UdlAtimvAy1ES8g9DeA2DRykouikBqhS6cQGPF4
         lj6+PCS8r8EHO5usVNUj9Q/Y0G2iuwyn6UpZRZaGUHMwIwOEJSLfVjWvUkVWU+xuDZHU
         +zdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=b2hax+Xt;
       spf=pass (google.com: domain of papouti1994@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=papouti1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVhqEgEmNh+QHtTct6aoXrBAvxr3Js1Ktb7PmRgUJ+8=;
        b=r9zOhAIFwbPrEpAfqSq1Ib4PgyDzm8LeAjrSnMXI12DEITlS6jTks4gfb+2BVkM35U
         FBzXuXHwvjUMWwSqF/RBRtGqtYrREcshnmwzYMVpU0759rHFWrifhWXPq+MUDomlkQxu
         kn++aqZ5kQvhfEwtSsG3M9Of54B5f3AYE3N78XiTUt66eF1V6qrYHVuKoQwSJVPLGXu9
         jDzrfAdhsb41QVMhufOPKWz5IxZhI8QaXb/vPjEKY82Fp2PV2v7x+4LoMwohE3gxFRU2
         tWbM6l6068GWphOf6x6NnkRkS7/YKtyvwSlN51T2Tl1qa/j/fTdaf0Slkh5/Z1Qau9t0
         8P/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PVhqEgEmNh+QHtTct6aoXrBAvxr3Js1Ktb7PmRgUJ+8=;
        b=lj2kppi9ef0uGVrPf33k8qOo44rEo2AWw/wg51mkM8eOquok6fAchyC4HlCdYCqdy3
         8zPnmlTvxMe7wF3d6e1gA+oMcLU4nZ6uhssdPwPHTa3gLWNePd/mHIzXi/0MPxU61LuS
         BrsWEdMR7i/H6/cn+bEgegB1JeH+qr2rVk741sdeI/xlAPn1Fm/dY5n+98pKOTajWA6I
         93vEPDJbmbgp3fouD7LlONzpj6ENvbn86hMh0qB3gNaeZwQcIxeeGZQEh/zjnsdrX+vq
         E6ol+Fx0f0IXuLgkLk+B/FTEvWkt0KjVEjMnW02oIVIfQ+jcwtjmIAqlBlwZdD/OIkGi
         L6pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PVhqEgEmNh+QHtTct6aoXrBAvxr3Js1Ktb7PmRgUJ+8=;
        b=JPbIocl5yFpJPfiI4MzSGf34KIJ9qfycItarvpBo5BkAL8mEaERa9RPTDQWubF5J6b
         nj1HIBcHBVGbydPkYJK06ZnE8NGsCuoieoO68IKW3hUu8TEvMbwqABKTFd3kVPm3HeR9
         i9xI+lwGDzoW4gGhuhtYp3I2tsCyrAaNjGhq6GGsLNjrzSOmm872z62uJIt5xM4aoZV/
         YXrinKxw1tIDRHiqAcAASFrE6nIv6gV9tuYjBmyUay7og0ikrrI/gHVe2w4A3L9MITfP
         vdosmoIhfd5gw12ifOGP5wswkNK+JGGj3sUF4dAHWRGGMrixatBeLNzG+Ih+B0SFdjw0
         k91A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530My1tfUP7E8BGU2XgUCXGJFHkEhR+raQbKhqC4IzlPF44z2Z9/
	JWqTxPjzaN6jhopgbj8z7b8=
X-Google-Smtp-Source: ABdhPJytZCuui74jR+N8FsE1a4d+BQXHt+E9/EPgYb6PGCGiGs+W5Domc1MofpCYzrD1/YT8BLyyXw==
X-Received: by 2002:a5d:6152:0:b0:205:bcf3:2cc with SMTP id y18-20020a5d6152000000b00205bcf302ccmr12431336wrt.158.1648933673391;
        Sat, 02 Apr 2022 14:07:53 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f5cf:0:b0:205:e1d9:2a6b with SMTP id k15-20020adff5cf000000b00205e1d92a6bls73773wrp.1.gmail;
 Sat, 02 Apr 2022 14:07:52 -0700 (PDT)
X-Received: by 2002:a5d:47a1:0:b0:204:9a7:22cd with SMTP id 1-20020a5d47a1000000b0020409a722cdmr12186465wrb.186.1648933672265;
        Sat, 02 Apr 2022 14:07:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648933672; cv=none;
        d=google.com; s=arc-20160816;
        b=dq56DQkajguUxeJx0LD9nNwZf3TV6XIr+fzXSx+IdPQ4VlXeO7oogE3lHaOJ4EZcCy
         FVKhujb3oXOOenbBql1xPXUkO/hWdLGPgvYVJi6b/eXdSiQmCh7dinYdHfvvSyDMonai
         YF/G7Wu4D5z0UvJv+8PJb1OjhVG0tQr/ABEj/cK/j3nMZm1bn1oonTZicQXzNcz8Alna
         KR5vT1n+tK1wbfACli3qw4B+T5IejMZPAn5b2a77q7n6xp8S4x8fxjTqd7QCN6Kh3YGy
         IBcbHtnpP2uWKM/fIhXWA/2eF+UDtk3FhWmszn4/h4kDZyuFIZhVGpyKhFnh9erykoGN
         s+8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=QPOenhf6Nsuf3T24lv66Yx4nXRhdUYDgKLCeNqn91Xo=;
        b=mPPajEF/me71Soyd0yrVZqvxN9aoQgRcUAhGkFqVsO4GXZNbfJYEEvb+i0y5ejB71t
         RlDpqpFyYBWz+ZbKBPNC+53uqVcgVK1pu6W/TAtX+e5YUTMJaD1BaHy4eieW3CCRxTPE
         TKQmCNTjaIBMkCN1yDdwWeuJUljTNdsZWJ1Z5YCWZtK1Wr5ffROGOIFecNGjfSk/zm+T
         xjLk8IDUV8T9U7i0hu05cyPCCjnGnU4KZXBjiA4q/prMM5VA/4WF4Wp+PJKFXIGu7Mnp
         g+MtvcsMxlq8RbXIJ270BQ6NL89W/1SZle/dCoPmgBjzzcjxnMIzv6gZe5HFkFUnZV66
         242Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=b2hax+Xt;
       spf=pass (google.com: domain of papouti1994@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=papouti1994@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id k15-20020a05600c0b4f00b00389bcac6001si225257wmr.2.2022.04.02.14.07.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 14:07:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of papouti1994@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id bu29so10799792lfb.0
        for <linux-ntb@googlegroups.com>; Sat, 02 Apr 2022 14:07:52 -0700 (PDT)
X-Received: by 2002:a05:6512:4001:b0:44a:c386:aac9 with SMTP id
 br1-20020a056512400100b0044ac386aac9mr12687984lfb.12.1648933671749; Sat, 02
 Apr 2022 14:07:51 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Riterhouse <sarahriterhouse89@gmail.com>
Date: Sat, 2 Apr 2022 21:07:35 +0000
Message-ID: <CA+BT2oVUFzw-uGc4ZDH86=gwL+V-QY7Vg-A_4LGAfcFOmJcQYg@mail.gmail.com>
Subject: HIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000c34c2f05dbb2493b"
X-Original-Sender: sarahriterhouse89@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=b2hax+Xt;       spf=pass
 (google.com: domain of papouti1994@gmail.com designates 2a00:1450:4864:20::131
 as permitted sender) smtp.mailfrom=papouti1994@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000c34c2f05dbb2493b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

--=20
=E6=82=A8=E5=A5=BD=EF=BC=8C=E8=AF=B7=E7=A1=AE=E8=AE=A4=E6=AD=A4=E9=82=AE=E4=
=BB=B6=E6=98=AF=E5=90=A6=E5=A4=84=E4=BA=8E=E6=B4=BB=E5=8A=A8=E7=8A=B6=E6=80=
=81=E3=80=82

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CA%2BBT2oVUFzw-uGc4ZDH86%3DgwL%2BV-QY7Vg-A_4LGAfcFOmJcQYg%40mail.=
gmail.com.

--000000000000c34c2f05dbb2493b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=E6=82=A8=
=E5=A5=BD=EF=BC=8C=E8=AF=B7=E7=A1=AE=E8=AE=A4=E6=AD=A4=E9=82=AE=E4=BB=B6=E6=
=98=AF=E5=90=A6=E5=A4=84=E4=BA=8E=E6=B4=BB=E5=8A=A8=E7=8A=B6=E6=80=81=E3=80=
=82<br></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CA%2BBT2oVUFzw-uGc4ZDH86%3DgwL%2BV-QY7Vg-A_4LGAfcFOmJc=
QYg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups=
.google.com/d/msgid/linux-ntb/CA%2BBT2oVUFzw-uGc4ZDH86%3DgwL%2BV-QY7Vg-A_4L=
GAfcFOmJcQYg%40mail.gmail.com</a>.<br />

--000000000000c34c2f05dbb2493b--
