Return-Path: <linux-ntb+bncBAABBK5HVDZQKGQE7NTVH7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD8B182E24
	for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 11:49:15 +0100 (CET)
Received: by mail-wm1-x338.google.com with SMTP id a13sf1968504wme.7
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 03:49:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584010155; cv=pass;
        d=google.com; s=arc-20160816;
        b=kS5PEbhg9bIKU6VTkgTSGl8ji4TGwvRGAUhI9G9dWLaEaoU0VINEzU21Jvq0hCoaQb
         k0FEU814YllqY0t6YD/TgE4ahxVsMBDlB4X2F/LY1Bt+AWFVFOV68qlaqj5GUOhndydj
         JqO9+FiAIoRORxmODxNCjewQMGnZvvM6pR/87JEh8/o3aoFvK4p86UG21y94Epl40QHr
         S+o1LtgLN4Cf2AnR/bZdPKb7avXrpOfQ3N8Esykgc1JNCLLQ1WS0GrMMtcqX7CxecOro
         Tx3E46l8pzhG7suXZaRvGgcLzeaXwyh0Cf0GU88btr1A5cKjx9csXRtI3iyfqrrnFPJz
         dtBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:autocrypt:from:references:to:subject:sender
         :dkim-signature;
        bh=bW55dDbDs3dHLpZFGvPIHons3lsj6u5Q2B1k0KzyQe4=;
        b=jk983PwZVlGEacehUIHYwf9gJ85++VPiSR2yP66yJ82Ey7aRmxkdLdpktlRc/2RUyK
         jRbdvXTkb3kHmLsJ+EXxaFvjgmS3zVcEVEprPEQn91pSKCsSPHKFl/NNMrJYzDhLqXW+
         ZFRBRElNu9G3ZeGvsI7UmKUpsm2IpaY38nBX7aNMgXdiuqrjaxz5sJON5OdnU+iYj/cq
         8MGYNOWwNxYscczYEBhdjgbsq5Fo/OFutnq5sK2hwoQf3Laa60wcjTBX++7OdDY+ahrZ
         QSn1KES2BndiZUbzNcX07LT+dmq3c0/nbnDWvadCEfWiMQVDIqc1aenrUmrjIz/bkhhe
         cTLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tzimmermann@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bW55dDbDs3dHLpZFGvPIHons3lsj6u5Q2B1k0KzyQe4=;
        b=DsafDi6kE40WwPvBRypaxA/+oz4J94APxXydmmTeYa/rPsiavS2W14psXEhKmL73sK
         KWN3Pwm+EZQ8UK5zjbhz4P6YDgntAKddOWo7zB6HtneXEQZuaiAKqmjXwf2SGs+m5fus
         +u4DcCpgl4BrTn9VGVcS3rAkyyR0s3u1r8UyfA47NIu5wAsy//kKLBJu67wemsP0N5B8
         a2NPbohtIv3uhzciMvELSWA1fka78vFzj7HtJPzy0pqjWL6BU/JjOuqToUKFbY8On2qs
         hhQpWE6UIy6EDwJnzZGEvquSInEBLsjSZkiEJx49QImeuimH3VgTDdUItZ/mJGM2SWK/
         efrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bW55dDbDs3dHLpZFGvPIHons3lsj6u5Q2B1k0KzyQe4=;
        b=fB1n6DUjzkvnojermwlheVHC6OYh5P57mjBrVV9gY1WTyNrQBraf0xmItths4g60Do
         xvvu7mNuwxlz6U3McK9a6AtxCB4oLfzzSX665Ur58bbx/pjw74Yxqc1Yp0Rv9WO2Gf7r
         AXTOtEdBn+QKSX7hbYPFXcVU30cCzuf13i+y/w40DsOVJE1AKNFVXOSj7A3Swzkv0U1H
         S3Sj4Nt27e8UO5uUcIG10oL9ak2AKR73+X8gxpXxVwpcVuLUyRKQ/lvvUNT191kqybJY
         +73rnG4vfBWkdoAC7KPkVSvNiJwH5mCbkn0vKE4YT5rP77XPjVjfTCEI3MwW7RtfqmBb
         tDQg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ100wqTAfQkNoM7/GG7nhxr5P1pvsBgxXApgu4Kd9/eXwnWMEkq
	9QAPXjlGxVa4Jmgr63oPlTU=
X-Google-Smtp-Source: ADFU+vuOspRI2rUIulH1Q7wGAwMFLDc3H086Lgr0hCab2NzQ9FbWrJHh88prwmCkXcBJwQjyOqybpA==
X-Received: by 2002:a1c:7f86:: with SMTP id a128mr4491285wmd.185.1584010155354;
        Thu, 12 Mar 2020 03:49:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls349844wmc.0.gmail; Thu, 12 Mar
 2020 03:49:15 -0700 (PDT)
X-Received: by 2002:a05:600c:258c:: with SMTP id 12mr4426894wmh.140.1584010154960;
        Thu, 12 Mar 2020 03:49:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584010154; cv=none;
        d=google.com; s=arc-20160816;
        b=OufopaRb2rHCWx4AB+NTFzgEpv0qa+9ZRAy2IGZzMWJ5eNKNhmth7hGBL2ZJo7gkq9
         /NSYMv/9uMEbRQ8lEZ8RpZx6/6IG/fXHRsP3wqWUM1G2QuMDvukZFnoJ3Gc+r46msq9q
         5BpZsblG1jtbDE6PFPf1ms0r3yo7KX0gYp8ULeZeGpPcwstJBGIkRvYsbDb9pEbJTEu4
         gnHiyfkwDPNQuReIO74gmBx3YEfdeZbvPnATwWiYejlmnhYvHLZMAhX4i8IJwINtGLMP
         46NXj9ltkV8ybin6bEJ3ed3MkYM3GqF6MBJL2jlZ1NAuO9Peh9css0a0bpEX4IiJBcQ6
         jklQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:to:subject;
        bh=C5i3vpTqpTYDWxfPuhxAtCyaTu5AoPeJey9jXQpLsD8=;
        b=JBGvpETkfUthPtbC6NYB1Ph2p9U5MKPexwlbsLnH0CqA1z5/mO2+kiqU9jRJeVO5Vn
         a4IZXL48DZNMC32D1wLN7xjCShBTyLYQ3RlJ0Z8ux5z+pUK4cgxaP/oGyF5IFCpvDyfs
         fcCQ2qX9XPwNWxdqY/Wm2jZ1BFVs3JXikTmdz6nZldjpS6UcoD++pRvon61Ha9vShR2C
         l6XoLbRA3znZS6lZVROakNJ/4us9CjioQDzu9DrEAGUZlGX67Q9iR303iCFcC+PhYhXN
         ZaSPTI8TyyPD9xiATRbHVNUBH/TUOa7tZrbR5MFoiS6t/h2sZZKSvc+FpZKht26DeWG+
         8X1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tzimmermann@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id n7si412203wmc.1.2020.03.12.03.49.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 03:49:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 62A77B1EC;
	Thu, 12 Mar 2020 10:49:11 +0000 (UTC)
Subject: Re: [RESEND PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem
 argument (as in generic implementation)
To: Krzysztof Kozlowski <krzk@kernel.org>, Richard Henderson
 <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Jiri Slaby
 <jirislaby@gmail.com>, Nick Kossifidis <mickflemm@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Dave Jiang <dave.jiang@intel.com>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-7-krzk@kernel.org>
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 mQENBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAG0J1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPokBVAQTAQgAPhYh
 BHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsDBQkDwmcABQsJCAcCBhUKCQgLAgQWAgMB
 Ah4BAheAAAoJEGgNwR1TC3ojR80H/jH+vYavwQ+TvO8ksXL9JQWc3IFSiGpuSVXLCdg62AmR
 irxW+qCwNncNQyb9rd30gzdectSkPWL3KSqEResBe24IbA5/jSkPweJasgXtfhuyoeCJ6PXo
 clQQGKIoFIAEv1s8l0ggPZswvCinegl1diyJXUXmdEJRTWYAtxn/atut1o6Giv6D2qmYbXN7
 mneMC5MzlLaJKUtoH7U/IjVw1sx2qtxAZGKVm4RZxPnMCp9E1MAr5t4dP5gJCIiqsdrVqI6i
 KupZstMxstPU//azmz7ZWWxT0JzgJqZSvPYx/SATeexTYBP47YFyri4jnsty2ErS91E6H8os
 Bv6pnSn7eAq5AQ0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRH
 UE9eosYbT6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgT
 RjP+qbU63Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+R
 dhgATnWWGKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zb
 ehDda8lvhFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r
 12+lqdsAEQEAAYkBPAQYAQgAJhYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsMBQkD
 wmcAAAoJEGgNwR1TC3ojpfcIAInwP5OlcEKokTnHCiDTz4Ony4GnHRP2fXATQZCKxmu4AJY2
 h9ifw9Nf2TjCZ6AMvC3thAN0rFDj55N9l4s1CpaDo4J+0fkrHuyNacnT206CeJV1E7NYntxU
 n+LSiRrOdywn6erjxRi9EYTVLCHcDhBEjKmFZfg4AM4GZMWX1lg0+eHbd5oL1as28WvvI/uI
 aMyV8RbyXot1r/8QLlWldU3NrTF5p7TMU2y3ZH2mf5suSKHAMtbE4jKJ8ZHFOo3GhLgjVrBW
 HE9JXO08xKkgD+w6v83+nomsEuf6C6LYrqY/tsZvyEX6zN8CtirPdPWu/VXNRYAl/lat7lSI
 3H26qrE=
Message-ID: <90baef2d-25fe-fac4-6a7e-b103b4b6721e@suse.de>
Date: Thu, 12 Mar 2020 11:49:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219175007.13627-7-krzk@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="8zb502i0uNK5UHJJl43MN65Z2VSqAtFfM"
X-Original-Sender: tzimmermann@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as
 permitted sender) smtp.mailfrom=tzimmermann@suse.de
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--8zb502i0uNK5UHJJl43MN65Z2VSqAtFfM
Content-Type: multipart/mixed; boundary="UnbV06xuRFGsh6csSeVcRA5al48ja8xJK";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Richard Henderson
 <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Jiri Slaby
 <jirislaby@gmail.com>, Nick Kossifidis <mickflemm@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Dave Jiang <dave.jiang@intel.com>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
Message-ID: <90baef2d-25fe-fac4-6a7e-b103b4b6721e@suse.de>
Subject: Re: [RESEND PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem
 argument (as in generic implementation)
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-7-krzk@kernel.org>
In-Reply-To: <20200219175007.13627-7-krzk@kernel.org>

--UnbV06xuRFGsh6csSeVcRA5al48ja8xJK
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

I just received a resend email from 3 weeks ago :/

Do you want me to merge the mgag200 patch into drm-misc-next?

Best regards
Thomas

Am 19.02.20 um 18:50 schrieb Krzysztof Kozlowski:
> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
>=20
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
>=20
> ---
>=20
> Changes since v1:
> 1. Add Thomas' review.
> ---
>  drivers/gpu/drm/mgag200/mgag200_drv.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/mgag200/mgag200_drv.h b/drivers/gpu/drm/mgag=
200/mgag200_drv.h
> index aa32aad222c2..6512b3af4fb7 100644
> --- a/drivers/gpu/drm/mgag200/mgag200_drv.h
> +++ b/drivers/gpu/drm/mgag200/mgag200_drv.h
> @@ -34,9 +34,9 @@
> =20
>  #define MGAG200FB_CONN_LIMIT 1
> =20
> -#define RREG8(reg) ioread8(((void __iomem *)mdev->rmmio) + (reg))
> +#define RREG8(reg) ioread8(((const void __iomem *)mdev->rmmio) + (reg))
>  #define WREG8(reg, v) iowrite8(v, ((void __iomem *)mdev->rmmio) + (reg))
> -#define RREG32(reg) ioread32(((void __iomem *)mdev->rmmio) + (reg))
> +#define RREG32(reg) ioread32(((const void __iomem *)mdev->rmmio) + (reg)=
)
>  #define WREG32(reg, v) iowrite32(v, ((void __iomem *)mdev->rmmio) + (reg=
))
> =20
>  #define ATTR_INDEX 0x1fc0
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/90baef2d-25fe-fac4-6a7e-b103b4b6721e%40suse.de.

--UnbV06xuRFGsh6csSeVcRA5al48ja8xJK--

--8zb502i0uNK5UHJJl43MN65Z2VSqAtFfM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl5qE6QACgkQaA3BHVML
eiOp7Af/Z24gM/vp7wuoDOu1s9VJhDHNRqfYcrpjv+SeE5E7jsj4gBCwwLJxuyKf
5DIzeOH97Mrv5fgfIx97Af8C372d1sRW46TwvSXFm8ywyTvigM4cWdRapf9cXozZ
AiQUCqkrkGEL6FhofMuHqZ2arL+6NooRluvXmoeX9bXA+itrwOhU4YhoIUwTJnUc
7UrcNFXhCKIZrEGfkHGZrnbC/Lr9g+tBLcEcQJf69SUMc56aboUZf47aOcpw67lj
3TpHOqEJwqnxnQlKSO0cL4BgwEzZWt3ahVqFdDlM+QfSlJO65N7Y6s8CismBxubN
bGiOW37w7Bmi4mVHO5RWa3uelcwjoA==
=D9Sa
-----END PGP SIGNATURE-----

--8zb502i0uNK5UHJJl43MN65Z2VSqAtFfM--
