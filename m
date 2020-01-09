Return-Path: <linux-ntb+bncBAABB7EE3PYAKGQERA7ESWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 017AA135302
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Jan 2020 07:04:45 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id i9sf2458377wru.1
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 22:04:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578549884; cv=pass;
        d=google.com; s=arc-20160816;
        b=hyNtat8u5Xoezug/6+vefoUSyZlbG4RvMKCtoQkJZUicQJdx9Kh8eEb+XjRI+iWp1B
         qFflPE60NiI4x67lOcgn4o22LCnAKrCfIQoxS+76VR4n3iOUsiqQ7d4sK64cZR+el29e
         /G64p3YBZwtjhIDkD5EosDq8etmKzqASQYI7TBLAKospGLXO8941q2YPTENX9oJkuPoD
         wFe6yZH0EP3+RnaFcbp4XPUA4lUtWMtSp4RbMRgcUBOZLBKe+fBGnrC3qO485ORkXn0t
         CD/0oIrkKDjCnaasQdDLReydbCQ7jYCdtt9J9WALR9Wqv/3GgR4nijxUHGcLLtr1BOMK
         IDKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:autocrypt:from:references:to:subject:sender
         :dkim-signature;
        bh=yfHH32nPVSCFlQW3TfOaNtTuUd6FvwtBMt2nUBcps3k=;
        b=Vg3u75+cQztTO2Q9sqYZ+PREahwXKHAw/QXGM1++pNhhrK9FMsRz6CJ6pL3wzDIUYL
         5N/qcA83VnYhXOtonlF2KN/EAed0X4AgOh6tc0lMTANewtfo7kbX64gbyZ4GxSxPY+8A
         jfHDMo17MUSWjvSYyNBjhtZETRlz3tIJb66U60oW1J0Qk8xVaAVgb2PVu0a6BND90r5t
         8KLp3sSrKdwqUEm3ELHAGRRucXMtvXylYTLX3DlKDmH6RauDUdUcQkUll+AHM7Qm0QLd
         /ckzw62IRejNYfajJPJflhYdpLI7+ziPvyliVo8JLra3cQ9x9TRUluTw3pRnFz+x+b7K
         IDmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tzimmermann@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yfHH32nPVSCFlQW3TfOaNtTuUd6FvwtBMt2nUBcps3k=;
        b=KWs9jmyAo5brBcjnp0qMER6LJaTjqmQKScjeERRC2kU3iVLm3MeHi2y2wNE5NPFaoS
         qN6Ob44phCXBcmqgyj2pmMriAsIkRFNkO+Q4jPGWoKa5To7jXK/FbTUqGLRz1hX2ZgNK
         2Jo//CJipiRqItcLQ15QOcysSnTZolKPNyHXUHmHrNMBpvPoh+cJGhR7mPsvhdBwk9ob
         R2Np3uG1DrEZ6y8bMZoQQlPIRsZ8wTLKOBW1F12vNGqkwwkNQ++5FWQPnMQAwat8GzdX
         7UuNGNKOzWBm9+TNQhNleSPRFNUD6oR/UYdl8/ELWUMwL3bX1cpyX/tqJgLbncO0crWn
         hadw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yfHH32nPVSCFlQW3TfOaNtTuUd6FvwtBMt2nUBcps3k=;
        b=fUirkzJcBTi3gaXDnLasacKxK13J4BAqBJlYUXj+hlh9kVrD56YVrP9cWALL7RUzyc
         DpVU8c7NQ0JwWE4Qkldu7FZrlkBB5faG8WyMwyHOtx+wfjX8PrNzaN3n92FweheAYnPE
         HEA1UVaiQhmblpKYsybavyVGCYOiNo5lGuyiveYitHy67n+a38WZrzFGXFVqOiXlXH5P
         0azmVx+kN/0wR7nYi6Vw3+kna/1rb/5VSWCe16MGL96a45e7zVoATZ3X4Oegg2825VOV
         kmKnzbig7KMXuQoe0ykB1oBucNN+FI7zLZlUavXerWa6LAWu4EO7xZDz7QxYL/dMErmx
         aNig==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUnWFe6IIWOkN2Lo+6PSOKpFToFzz4ZCNNQF48GYaMsM1ZS13S5
	PM7R4OnendZTu6i+xJ5VFzg=
X-Google-Smtp-Source: APXvYqy3HA+K7eD1FD9t6ickkJic78tZW85TbexlO3cZT9jIWpxpSAZWxe0mSxCEunAMu4v9deiJpw==
X-Received: by 2002:a1c:61d6:: with SMTP id v205mr2708806wmb.91.1578549884651;
        Wed, 08 Jan 2020 22:04:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f403:: with SMTP id g3ls272816wro.3.gmail; Wed, 08 Jan
 2020 22:04:44 -0800 (PST)
X-Received: by 2002:adf:a109:: with SMTP id o9mr9396103wro.189.1578549884302;
        Wed, 08 Jan 2020 22:04:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578549884; cv=none;
        d=google.com; s=arc-20160816;
        b=sEJNNk1uUdlcjoMwmtud+JtoK3IF6R2JxoW8sqc2rxbnFFfrOBKA3BiYXcIAfLJb3H
         YHlb5YpqiWxWDrqfctGTTPWZbTsgRjtrPL/w9kNOnFPF57BKw1RPRp5R9WY1NHeI9Nqb
         KJCZbOLAcSe4Lo01IysVTbln9+5AFpMlRywNANG60bW4YxuPT7IG/Zch/T0pKBCvk1Z2
         q81gV5OSLEVvPbP5LG+rfaSXKojcLaUdLYID1Egv3/FJN2vpa/oBto4rWtv7mzodMaRI
         43LJ9/oXPdhZ/U5H7kKZXVFcljay+65OqpXo91YjtLvAtzMzrdTNM4z/Q9pGpDl7rZaK
         MFOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:to:subject;
        bh=9tno1FiGey+sJHbY0i45TFCtBUgzMnPdSnfH9NDEgDU=;
        b=hsKXY43Wy+oT6WZ0xaTf38evWTo5o3IF+HdkgpooDVVkV2D085DbHthk4EcEFPIJJt
         g7P+j8jatddOgsofZq1d6N6XjEgmlkG47m9+BNY96huk3lwXI0FPgWtC0oqLjFI+12uc
         y/+P+Crvwv0mPugJUCKJc656McGd9FvpDR1EsFFokMzXPwjVMpY8GaoDA6S+Ghhb9YRP
         EAFucTJHTKhyAoQEeYHnoyxrgY3I04Tv4kCmQVFT8JVxnihPACxRKwsZyDQgC7S0pcAH
         ZfqGZa1kkDpfneXdhTfh00Xbc04HKIZaAqHMwPsZQDLchvxp2fTu/v/Otg1Pj7MCBOOR
         ga7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tzimmermann@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id y185si47001wmg.0.2020.01.08.22.04.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 22:04:44 -0800 (PST)
Received-SPF: pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id DF4A4AEE0;
	Thu,  9 Jan 2020 06:04:42 +0000 (UTC)
Subject: Re: [PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem argument (as
 in generic implementation)
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
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
References: <20200108200528.4614-1-krzk@kernel.org>
 <20200108200528.4614-7-krzk@kernel.org>
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
Message-ID: <ff03b149-b825-47f3-f92e-100899bb05fd@suse.de>
Date: Thu, 9 Jan 2020 07:04:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200108200528.4614-7-krzk@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="3rd3nqEKmviIlgYXLgxkt4GDz8CFTZqke"
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
--3rd3nqEKmviIlgYXLgxkt4GDz8CFTZqke
Content-Type: multipart/mixed; boundary="EqxkoMtfePcRgHH0AtAZfgeT52t9h5L9b";
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
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
Message-ID: <ff03b149-b825-47f3-f92e-100899bb05fd@suse.de>
Subject: Re: [PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem argument (as
 in generic implementation)
References: <20200108200528.4614-1-krzk@kernel.org>
 <20200108200528.4614-7-krzk@kernel.org>
In-Reply-To: <20200108200528.4614-7-krzk@kernel.org>

--EqxkoMtfePcRgHH0AtAZfgeT52t9h5L9b
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 08.01.20 um 21:05 schrieb Krzysztof Kozlowski:
> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
>=20
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>

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
linux-ntb/ff03b149-b825-47f3-f92e-100899bb05fd%40suse.de.

--EqxkoMtfePcRgHH0AtAZfgeT52t9h5L9b--

--3rd3nqEKmviIlgYXLgxkt4GDz8CFTZqke
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl4WwngACgkQaA3BHVML
eiOKNgf/dNIJuZ1NzHHcf9BEmT/BV7QlRe6/FHHA4aiJdqTNYEZ4xQWzoZBT3FUD
+t1ZzbPtJWF3dx/Bi2AyeI9UK9D5lqSqMPpjgfAgMdT60DkhStpiz4k80WtBG7NY
dDcotCOrSeaYxImtCFAchwYcIw0l/cAD/ohiQYTfXx3FRj2Sb2hRIKx2h5Mr7k6G
3lSOqlEt69S2/G/Xlb37VeI2f07RsVR+b89pQPgS5WWUyITa5ukgxWrI5sc7Sn5U
ogamIdJCPT06fCNVF1JRsOBlI4qw+LNh5Z63REuA8V0qPytUKOW9kdxMwUlhkZJ/
bQNkg8ibheQ3Xn8Bq6EjM/UUSS7XyQ==
=C0TM
-----END PGP SIGNATURE-----

--3rd3nqEKmviIlgYXLgxkt4GDz8CFTZqke--
