Return-Path: <linux-ntb+bncBAABBPUO47ZQKGQEX72ZCDQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A491907CD
	for <lists+linux-ntb@lfdr.de>; Tue, 24 Mar 2020 09:39:27 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id c14sf4157971lfp.22
        for <lists+linux-ntb@lfdr.de>; Tue, 24 Mar 2020 01:39:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039167; cv=pass;
        d=google.com; s=arc-20160816;
        b=wfjeuDglltnmka4XxTD/z2WlVXsUzh7fS0X1FzoZ51lZblYGAUWe8u3cF9aOL3h9/y
         2yUhn8wADnKDoZ8p/gyD9MR4V3BFpVC8FKTFKpzzqO/FKaqM47Q3vpzk8YxQBAau1D1x
         bMdZBIegN07BeyWsHYLuHsJSbaRN4JeMkLrAQF6WeTGojTb9MbYnhfEsB2vR9cgLyxWY
         N3gKcxHhKwyngdzOsY5z+dH/Hdurd7KG6w5EbE6NKL+Sr2MAUDaQ5NlOIqAnDK2se/CV
         3sbCAIK28f9qrxVitNEk0YP0ieprE0p6XGFE6tYRI3NdjUt3F20pLGTKA5sXCFZLJNL0
         +dRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:autocrypt:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=ZBzAj9FCf63ERUO6iNK9/27KMX6KlD0LhM2LqIy3NU8=;
        b=BCu+eFfBp99vljaUUcGDvQc4vqK/bWskCcdlY5NNuaeciYNJtw7JNP+iiYaiBkvb1v
         T/E+5+cbqQZJWsTi3mkz64K58sF8h+Xkwgw45mSrV0eQQTXmKuK+rNDh7+w9bzW4rvMi
         3+igXWZ54Qe2Kqt9Rg4r8ZDqttuTPIX/5ktjE7c+0NXUgJElLDOLEFNY5SnlzthHfb4V
         1Gh3abvJpl/Q4oMvVRARc+GQvqjtM8sXHTK3gpBN88IgA1TRZSz2Ygv9wRCtg6PzYY+3
         B24JMbhIRA68zjstgCidhqYRHnuX6HeOhzi7vExaPYHcE3NR+WGfIGdU8S03X9Pim+HN
         Na3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tzimmermann@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZBzAj9FCf63ERUO6iNK9/27KMX6KlD0LhM2LqIy3NU8=;
        b=fJunuCw641Wo372Fwr03P4QKNkdRBfsNyUJNQ71qQtLh7xQa9YmKYPZtc6oWZ908XK
         brEEKh0nAqAW1C+g962N6L+0Iwp51bmzwm20vZnLYJCjUlLRyxJaskwuSA4tMf+WiNzO
         cOMgnkliZ6CkWBbTuKO+VEevihrzI6ae5ExU/GfcVNhhNkm/7EZl1VxZGr0Q28c2mi73
         bWCUx895GYR0XStJwTybqTJdvuys4rtXAyiTI3krWtAjHbCUFpAOwQpPr39GsGVFprdb
         1bzEQBBH3x2tsLZzySGDynODC06LqnxCIBG9n5FScFZvn4pE3BRWq0mwOZpaxbJxY8DK
         3fCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZBzAj9FCf63ERUO6iNK9/27KMX6KlD0LhM2LqIy3NU8=;
        b=hiIiT1R4nnwediC5jGi7WWgrBF20NqlU9AP3W9HAO3W3VSO/lL/AiZWbKdWd+AJV3x
         1TaEd5wPP9WpUSoFPYNHWEGE0KZyCyzx70Dy66lzHlHbIQ0VKfquSbhuBfpWwnzSs2+7
         gO57LmdLSD8UeoWUMhtBS9c4H3f0SgD4sLS4gxjLoiqnyZcYWBGr8jKXuRuM2NYsfqBB
         8Ma6KZAofFLfA+bi9XyvCk0/og9zUPMbvz/3NhyCOu7k+dT5usHIt9NaYMMyz3QIH/sB
         dpGhVViJX8+pkHMeThAft89gS25PiLyZABDLTn/lXh6Gimp2AEsvGbjXus+Y8FD/0yhb
         Msnw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ1M12/u6SiPl+fvVqistzaHRAXgZQjSlCZmYOccKzpkBcMU3qkR
	PRojo6dCZwXGdcDHFvX7ylA=
X-Google-Smtp-Source: ADFU+vtT3MhMId7A8gUMGXVlxVhd0HuaGx3IuUPKLDIWic+Qpd3p8nu81YxLV+7yk3XHW/OCmVbzUg==
X-Received: by 2002:a2e:a419:: with SMTP id p25mr15719370ljn.206.1585039166902;
        Tue, 24 Mar 2020 01:39:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9099:: with SMTP id l25ls1247853ljg.7.gmail; Tue, 24 Mar
 2020 01:39:26 -0700 (PDT)
X-Received: by 2002:a2e:8192:: with SMTP id e18mr16911101ljg.57.1585039166444;
        Tue, 24 Mar 2020 01:39:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039166; cv=none;
        d=google.com; s=arc-20160816;
        b=gxoh/U/hwGjVpC/3xmFz0YwzC66f1P5sBj4f/3QaWidLAr612gWocgw1FOk7eke7nb
         +/nYUMELfZF/6iJs39q/dVmqzO6DMPdYWNxXI/LQLHGN4y037gLob0I5ZGQKjHmu5lsc
         aNciQhhn79lk5dWSveFOIF+SjPixIkbYvVrDzr18EMFK2PBqadaHu7o68fEYf/h5H7N3
         0m/xYhQ5pCvCuC81a/cgdFkRaYvD28ilbNKviPh7nHKXZv1pCcvnBtdfYv8EWBSngSyd
         DCwGeW1ghtKNplyzl9XPx25/FCPqBDp1ZPRFbZTXpzbta/Jvu+fxRrLEV9jU12Q2OtzW
         gEOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject;
        bh=vYbQkeAI0Mfcde2J2cVwKEiA7cocoAwOnHuMZXxYMX8=;
        b=sRGIlONFEV8k9yQj3VdDVHxWCmZZEVEHFWF+GMziVZETdCLmBWETEqTi4sifA1RQoV
         YN4C71yfXU3THjuihbLEwHmfcLlhfUBhM74TV9Ov0/3v6MFb+RT58AQb/tCZc3yU3geZ
         hEnvHOxFtJwZDYVcTI2Ed9mKS3Zk3vn2hDrSXG1gXH98pKF1XVfQQ0eRNHvGQ/S5lKQg
         lkk0Fqj2p4z9t5XCQH9xsUeAd/hPBRyP9qEMi6tZv161gPrwmB1UzIzI8ppVSdnI8j70
         NTkdAF7qSnr52CEbkEd6rY4ryJvD/PK0tzi8tEVW8kzf9igwdDYUy+OvjlMbIE1QsCwf
         ZdZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=tzimmermann@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id m11si917036ljj.2.2020.03.24.01.39.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of tzimmermann@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 6E501AE85;
	Tue, 24 Mar 2020 08:39:23 +0000 (UTC)
Subject: Re: [RESEND PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem
 argument (as in generic implementation)
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Richard Henderson <rth@twiddle.net>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner
 <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
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
 <90baef2d-25fe-fac4-6a7e-b103b4b6721e@suse.de>
 <20200314105944.GA16044@kozik-lap>
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
Message-ID: <b19bd919-3af5-855f-65a7-fa6f16b07b31@suse.de>
Date: Tue, 24 Mar 2020 09:39:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200314105944.GA16044@kozik-lap>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="5JHKoPMDjFIljnahlEBkrPhFBMFaUgU8x"
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
--5JHKoPMDjFIljnahlEBkrPhFBMFaUgU8x
Content-Type: multipart/mixed; boundary="hhPGeJseFbtGrgGh6f1kgq7y0jySVSvgE";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Richard Henderson <rth@twiddle.net>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner
 <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
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
Message-ID: <b19bd919-3af5-855f-65a7-fa6f16b07b31@suse.de>
Subject: Re: [RESEND PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem
 argument (as in generic implementation)
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-7-krzk@kernel.org>
 <90baef2d-25fe-fac4-6a7e-b103b4b6721e@suse.de>
 <20200314105944.GA16044@kozik-lap>
In-Reply-To: <20200314105944.GA16044@kozik-lap>

--hhPGeJseFbtGrgGh6f1kgq7y0jySVSvgE
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 14.03.20 um 11:59 schrieb Krzysztof Kozlowski:
> On Thu, Mar 12, 2020 at 11:49:05AM +0100, Thomas Zimmermann wrote:
>> Hi Krzysztof,
>>
>> I just received a resend email from 3 weeks ago :/
>>
>> Do you want me to merge the mgag200 patch into drm-misc-next?
>=20
> Thanks but it depends on the first patch in the series so either it
> could go with your ack through other tree or I will send it later (once
> 1st patch gets to mainline).

Ok. You're welcome to send it through any tree that works best for you.
mgag200 sees only little change. I wouldn't expect major merge
conflicts, if any.

Best regards
Thomas

>=20
>=20
> Best regards,
> Krzysztof
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
linux-ntb/b19bd919-3af5-855f-65a7-fa6f16b07b31%40suse.de.

--hhPGeJseFbtGrgGh6f1kgq7y0jySVSvgE--

--5JHKoPMDjFIljnahlEBkrPhFBMFaUgU8x
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl55xzYACgkQaA3BHVML
eiNG1wgAnt3qyju9VoZCaXPbgeTj4gxLN24UZYPowzBMiEUgsJRz8b2iRuEoEKGb
X+o80inBpVTWe/a+HI6wAQWEwidrIXUquQe1fSSpn2+h69aSApCBWBuxTuKZOLWq
z9ZpyDKo+VD0/zWGgOZttJXPQJYEfckuCoLN9qcVf+CmgXQNC0m6ZVg6kf59xrca
KEMDM4x2XhouIaoAtLYLQpt3U9YKgTphMMisTdha7xJt4h7CVx1uztnUyD2triFq
meU3vxWwePFuQF/1reT0Vr5FU18Z88+wOLZyu3oa+GMA5lp/DKlJJmTGH+VsQA9l
T/IiW9kxcWlBxT0ylEqlmHr82hqCAQ==
=iz+q
-----END PGP SIGNATURE-----

--5JHKoPMDjFIljnahlEBkrPhFBMFaUgU8x--
