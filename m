Return-Path: <linux-ntb+bncBCCYNIMESUCRBHPYY6KQMGQEFRQQWXI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 552F155389E
	for <lists+linux-ntb@lfdr.de>; Tue, 21 Jun 2022 19:13:03 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id g11-20020a056e021e0b00b002d1b5e8389bsf9587338ila.2
        for <lists+linux-ntb@lfdr.de>; Tue, 21 Jun 2022 10:13:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655831582; cv=pass;
        d=google.com; s=arc-20160816;
        b=kIKwFkRR6FxnvAHCv0S3hI2Ten8+L+ZG5582kKJcvJamoHC2qvMQYdP2Z2GdQgggE6
         ZEWP3OzmTZvho6xf0N4dEsZ2givdgLzmeYgLikQsSO7dVh4tot+ZCViwo8J9b2avhEA+
         1vy7YlaCIotZnp++R6doTgWMvoQsQIGK+gLo+UZgP+H6MfmPU+8krm6pUp85Xx47MOy8
         GQpgXtG26iNGmzhviPJUhVXEf5UHP9HkdJfAeZFMoEk45gqBVtBSLYh4d6zHoqCTuu5H
         efy66ng49wW0xIsMVN7lE+Vg6yyY00dF9vJSJ7MxYJuoaVk3xzkIByF27BBToV5P/hAG
         m+QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=pYBYpwVmfTQ36K2txM0MhQH4947z+92OfIIEZGu1V6w=;
        b=Iu+WetGuTJ/ot7FCf+o98qsYzUxwHeQaboaW4hSv0xZuyXF39vZx7Ut52fQT1aFbW0
         v3zrP1DwJMTW/NxB8D/HC3VNRklkQzZJEvUCSw6dylFSHwchty/GOprn9R2Pj3SeYgh7
         lE6hGiZYpw7/Fgvrq9XTlQzGPJ9TPNT8IpOnyaEwl+P/QRcHhxFeWzvA9kq2w9+BMoKK
         8buz7RpPdiviOq6iDyf2RciOQq8pv4fzNpv5zm/tneKPaHv+lmEx+0PrZSoi3XC8IEt0
         UjDXr4dfQsYB6a8lj7qPujaodwnYwM7B7SOxm7jQ3CBVUK3oIKaQnh4iXlLQlI8nxF++
         DmGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gT342V6Q;
       spf=pass (google.com: domain of maurislare2@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=maurislare2@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pYBYpwVmfTQ36K2txM0MhQH4947z+92OfIIEZGu1V6w=;
        b=TImJSgq1SOqHBpvTVSrb8GTOWV+lRb3gHQxOFAQJKLTCfZ8wPfx1rusxQroSSVJyll
         fcMi6CaWFIUQTKm/8zNTpE5RXqHj9WcqKQ5c+8HNjvDR7TOzEu0hCjf/FgCgaQealAzJ
         FHm6FgLO56gMRnq2HvII33cQrTNfJiJlWpRkzvTtK5p5FpWVkh/NKH5Q+ooErJ4ejHCp
         dI8vbmrjNy5Jnin4iRX0vAFlz6rbvrrl6DUjzqxoPn7MJpPA66cnCzfB8kgAXMTZ10b4
         rvjez/DXaekO6YwcT8x3LLoW+4Pl8VT5Ysq81ADudH/upUHvln/mckU5L6/O1RNmVwcg
         S1DA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pYBYpwVmfTQ36K2txM0MhQH4947z+92OfIIEZGu1V6w=;
        b=hWYZTqplj2aQUpiZCEGml+KcBrvOYT1AfdNSQoDjD1LJSp2OWlcJc2ieb0mvVjtpwK
         o3t8n2hbOicy+H18lZPQJHV5brETVtusx+UnmYEMwhlyip4oc/eAGUIxTC+eqPaoytet
         kwTEKO3CpXHCqNdjcWxKG6GgeycjrMctO6oBsehv1ERryn/qDxizuwlPurIlaYmAK9a6
         s+k/ZdXv/3+NXh3NAVEq6vuBAUwoBt5STR8UGhVOaOASuW2oK9QQ/DDpqb59H3TtDc10
         qekFEsdqNqFoGM6B52HwkMqec+U413nld4mLR0S1cHASw6zJosennfxphokC7iZuNgBh
         cpHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pYBYpwVmfTQ36K2txM0MhQH4947z+92OfIIEZGu1V6w=;
        b=d55qiWMjlpfB04KLHFS19nNwjEMADeq6IsONPw/y2vmiCFnnVJeBbElt5n+6k8nPtt
         80KSfFBfKGKuU8P8cB31zNtDMQEaZ3qjzzL7AW4tlaWmrtoAyuoVABtsBd5cgaAbOGZJ
         PoxZkSspWX0vRfRTIYJiFU78iqdmwORgRtzC9cJYN7WVvhOvFsYoKGLPBnkl/evnT1ab
         NeFV5/7vCUUW0IDpXLl1CszaVWVu40/EjMe3uf0VYf+FTK5jRiG8r5wpxWRAXCnSdFM2
         3yJlMksmizWyL2KRIsJkqetZZZWEYGbob3yo09FfmT2IFliYG21rdek64Ta0aOROVu5e
         iWaA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AJIora/7CjdSuktL4UUbDJWlDr8opxkNHWneErvnZQXDr4qSjxrVcgkL
	rR40rBOS3ybOveFw1cazTRA=
X-Google-Smtp-Source: AGRyM1vF85YF2oEomz1U+LEiAaievvSOVXfQgAZXR38vY2ycjsPYxK6jzAx3oQwNSiw0Wnm3OujAqw==
X-Received: by 2002:a05:6638:2645:b0:332:55e1:10 with SMTP id n5-20020a056638264500b0033255e10010mr17170256jat.121.1655831581982;
        Tue, 21 Jun 2022 10:13:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:c2d:b0:2d1:6ef8:7ae6 with SMTP id
 q13-20020a056e020c2d00b002d16ef87ae6ls2282903ilg.2.gmail; Tue, 21 Jun 2022
 10:13:01 -0700 (PDT)
X-Received: by 2002:a92:ddd1:0:b0:2d5:4877:65c8 with SMTP id d17-20020a92ddd1000000b002d5487765c8mr16823620ilr.267.1655831581367;
        Tue, 21 Jun 2022 10:13:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655831581; cv=none;
        d=google.com; s=arc-20160816;
        b=hV46A73KB86Bra8h1D1/S6m04Kf1RFXFaqKhdFvmc7Fwu3gM64Vedg0mxlBNWDIL6F
         XaGSYi+is4eNpiSQHRExcp62eIrRqtjpQJg2tkXULiGSdfWS/iSdSYL8bpVVgEVMBjCe
         QNNQTpjyoMghF7eqBZZ7vyq1W6i3F2TLvPOM11zKKMuP/WNADgdb31ZWwJD+cd4btnQh
         7wUord51KE/7EEuZ6VAPgujzu8V8bRwz36vIHu9FiU0tdf4DBr12foIGwZA2bqanjNQE
         55bZbqdhq9CqGqklzcsSDWlx4MFidHRYgIR9czxrGvUZDaudyWx1cc/mLQssSsBGxVbR
         fZHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Nm0E2X7WZuqpM3GOaYNoWCJ7sUCXvCapAZeiEWq+5To=;
        b=R4NmCRr9hCIToW6TCllghO1yXQYegkQrC3AuMROTOmzwQeyZdOaAMRTt+HS5xcQJkI
         YEqbuaBQDu9hgPBT/pziPuuKd+hmWDEtxvA4/4wb8kRYCmJBK/hDLJvzMBZqfVeIkYXu
         kyR0VvLaUQD6wuggS16Kc6Gm93s4OZLA4WgsJKn6g/E1z6sKzVgLhIPReME5njOeSG+t
         NAu6z3bQpQLRykNE6VT1xClsNCHOVE4Nwx5nZLKcnDCFtZqeMarFmV6qlfKpsQ+3uE+b
         0AefZ+xb7TjWxCgfbiRHia1isWMu5DYPBEVy/0XH9jlk3P7tilIURPzId7FulyTD7JfE
         sLYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=gT342V6Q;
       spf=pass (google.com: domain of maurislare2@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=maurislare2@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id e15-20020a026d4f000000b00331ed76f344si748067jaf.4.2022.06.21.10.13.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 10:13:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of maurislare2@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id d5so13081794plo.12
        for <linux-ntb@googlegroups.com>; Tue, 21 Jun 2022 10:13:01 -0700 (PDT)
X-Received: by 2002:a17:90b:388c:b0:1ec:d129:704 with SMTP id
 mu12-20020a17090b388c00b001ecd1290704mr3093886pjb.98.1655831581024; Tue, 21
 Jun 2022 10:13:01 -0700 (PDT)
MIME-Version: 1.0
From: Sarah Ritterhouse <sarahritterhouse986@gmail.com>
Date: Tue, 21 Jun 2022 17:12:47 +0000
Message-ID: <CAJ1oPZJUGPH_th3zfpej8Pskgy+AEULbQZ+xW_zB3iNo-JdtMw@mail.gmail.com>
Subject: HIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000031e6f705e1f85528"
X-Original-Sender: sarahritterhouse986@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=gT342V6Q;       spf=pass
 (google.com: domain of maurislare2@gmail.com designates 2607:f8b0:4864:20::634
 as permitted sender) smtp.mailfrom=maurislare2@gmail.com;       dmarc=pass
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

--00000000000031e6f705e1f85528
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ciao, per favore confermami se questa mail =C3=A8 attiva.

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAJ1oPZJUGPH_th3zfpej8Pskgy%2BAEULbQZ%2BxW_zB3iNo-JdtMw%40mail.gm=
ail.com.

--00000000000031e6f705e1f85528
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Ciao, per favor=
e confermami se questa mail =C3=A8 attiva.<br></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAJ1oPZJUGPH_th3zfpej8Pskgy%2BAEULbQZ%2BxW_zB3iNo-JdtM=
w%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CAJ1oPZJUGPH_th3zfpej8Pskgy%2BAEULbQZ%2BxW_zB3i=
No-JdtMw%40mail.gmail.com</a>.<br />

--00000000000031e6f705e1f85528--
