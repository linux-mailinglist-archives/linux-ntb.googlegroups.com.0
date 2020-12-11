Return-Path: <linux-ntb+bncBAABBTU6ZT7AKGQEYZ32DWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F772D7011
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 07:18:55 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id 18sf3394561vky.14
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 22:18:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607667534; cv=pass;
        d=google.com; s=arc-20160816;
        b=gv0OqIkDMymtjMZC0NpR4Kk7SXiFx359tRz+LDe+y/EcSbFxoWS73X06G7nIVYTc/v
         mtzuNMDNn2n/F4/2agnVpsd3mYpp6N4Wo5enLLm4KOlxvFMOxEyf28MwPqK/iG18F6XZ
         vjjK0OIzrOZgfpIQfXN48ejKjYkrB/TCDBbt2AwkcK+nyf4JXYXtEUH1KAURYJ0L5+ED
         VcBLEV9Y4CIuRVhlgAe9YqY2U85iCI0XSSJ5UwDNyPzTYDbvVbW771kM42HgkZ5c8Ibl
         HUzdDUTrBeMCKbjHsh9yFbhk47jF2VAuSdnX0fu+dWvBaqI1nKze5TtZv0t68x9I/D0j
         W9cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=m8pIJf5uhHEjLl9kp3LrxLkNWMnUtyUaTQW9cIQuLvw=;
        b=YH5mQMhMuZhwfmA1/7AbSfucwpt04LYnVj7/oPmIka/v2yAFH8jIqv8O0duC357ly3
         DiZQIa15vYbPxOzMtZZe0krMMQsWlsI3G0Rr39+BL8QpzwjuxWwV++G2e0s4KGD0cNgK
         uUU9+q+GgyVEDR55PEa47vSTF+4Ub2MNWE1TN6xf2wI/g66P8cQD/lstOcTdDHUew/8A
         y9TpMVGLvgtownLBcHSfnvYT7mqfGWrRZMnqlRtg5q1bScvjUsCRHZ5JT19JbM45k2VN
         DQ9lTeXxiTSuclj6CuOgaTXfzkVBwyJd+4ebfF1M+vN1nFNxEl/cXuNnWhQaWniXgzMq
         M31w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=LBVJx6W5;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=m8pIJf5uhHEjLl9kp3LrxLkNWMnUtyUaTQW9cIQuLvw=;
        b=F+1/jBdzStHNkjd1AItlAIkx31kl4i4KYhLw9JzF3asUcc4hbNh3x2rwwg5atN/DA4
         JZkJiPKlb34vPZAZBC7k8PUUUhxdD/l4LlFNo1WyHvMc0KnyNFf448wNe5sBW68FqwpY
         whoERPqgx6tBMXEucn2oRzft5oHplfCvH4wlnFABJsvldPnq5W13NAxhiyIesn35YvIS
         3fSKTZVZMzcxdeRcLrx3pxyfYtdUAPxaLI6asHwS4H5pl32gGUr7zC0zNF1IF+HuMeTg
         ApNNJ5jB7rLCxfqsaUQsq+hdiNOsmXToh/zwcdayFSArfXVds4yUkNxSKyyaAk4oUkTi
         et2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m8pIJf5uhHEjLl9kp3LrxLkNWMnUtyUaTQW9cIQuLvw=;
        b=ggZP6F110tseMfDPgFuxqcggbQVG8IGCSU6t8oHD/i4uyNxYg/pb7nvIzsuMG6ShvP
         gFt73EQUGKVBPUvD9IOBH3CT6fJx5FJA/RIOVXM5EHZVYJUDJOCuqyXuJV6S9cGxAKly
         uOiiHun0SavbYlUMnn1TUbTHPPKL1FjuQqSo3esPzG/h1s1u6lj9YCw4/KmmRUoRH2mq
         4wCZ6N+cXKGzFqMRsZsx+4NsQlOuDxR56l50u5yLPEa+n/yFoLt52SRxhB4szxYcOvB4
         qAi9P2STSZE4dRD667Geve8BfWLip1NlAEepEm9zrBTL5cqgiyY8eXGRt08ukY+EB94c
         P+hg==
X-Gm-Message-State: AOAM533mUBzzQsDkHp1xhnHZGPq1xzWC6p7nI3WEqHDES/f/S4wuGcbr
	fz4ymrmuhV49XODnT3j8ohU=
X-Google-Smtp-Source: ABdhPJxuCwEcT/MUVJXwlBIALCi0Zqcuo0HslSxw0rF/YZXaIaSEVwpdiiszKKzEOexWkszDxEHzww==
X-Received: by 2002:a1f:96cd:: with SMTP id y196mr12731799vkd.18.1607667534634;
        Thu, 10 Dec 2020 22:18:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:2758:: with SMTP id n85ls444379vkn.8.gmail; Thu, 10 Dec
 2020 22:18:54 -0800 (PST)
X-Received: by 2002:a1f:e807:: with SMTP id f7mr12425443vkh.2.1607667534171;
        Thu, 10 Dec 2020 22:18:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607667534; cv=none;
        d=google.com; s=arc-20160816;
        b=YsqfGmCKRIPOS2VYLNgESK76iZdcvkdfS1Jmv3r73M4iYVO1ZtBaLyIWWJRpqBHKhg
         3WmZ3lUa6xHYWY1hh7Q2P0y+pu90w5lQmzfosfeNkPDFexdAu/fcbDm5SM5g9I2ycklV
         9ggtLYdfTcxDAjhwuDVLPVNSj6b5QKjor5upcFfbMin8bokn25FaSwP25JvLjTnNXwsD
         gaP+5hjNzXkmmVJV2i356puh4OdpTJ3gBYim38pkzl+6KGR5t20lg1xKKosOoL6ALp7J
         b/o0d2KgL6cmWuR3I9owS1gugWWkClU1yxlkC9+yWgNJT+taYsuLJWzYZin4gH1RnhjX
         8IWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=0Hqvh2FmQdxs+E1P/+UvffdZOKFlLtbSz3sTxGcARMo=;
        b=D42+IBLA6cd9tgAra3H4Om60mi82HqfeM0mbBZDtiVeTDmnxpXnFlDNJWLed4c1BUY
         Qul1BTwj3XyEOtTp8I07DqgQHgRdLIIsdMNs3KBZXuEgDfrz/qSwrHioTejt0tm4ucUs
         JUDubFSDL62T4VykFSmmOspP9Jgngwz3CcI8nGRG+WwVLNzncIvcsaqLj5ySiVKh9zwe
         F35lIVWgt0TYTO/ad2il1qU0+DlZe1OMna3UbTntXEabvWRAoS2quqwHYUm0kDJoBeSr
         ij1utkFx+NzqpyNiKsD+TDMn4715nc4Cw5rqNjp9inwtgrCVsEXu5wGWh8ZG8gpWGXVc
         bWJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=LBVJx6W5;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id q22si566115vsn.2.2020.12.10.22.18.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 22:18:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 13F15AF2C;
	Fri, 11 Dec 2020 06:17:49 +0000 (UTC)
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu
 interrupts
To: boris.ostrovsky@oracle.com, Thomas Gleixner <tglx@linutronix.de>,
 LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>
References: <20201210192536.118432146@linutronix.de>
 <20201210194045.250321315@linutronix.de>
 <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
From: =?UTF-8?B?J0rDvHJnZW4gR3Jvw58nIHZpYSBsaW51eC1udGI=?= <linux-ntb@googlegroups.com>
Message-ID: <a4bce428-4420-6064-c7cc-7136a7544a52@suse.com>
Date: Fri, 11 Dec 2020 07:17:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="bInmAjsEBwVQG9mgj6zMfi4a5q7thbvRq"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=LBVJx6W5;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Reply-To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
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
--bInmAjsEBwVQG9mgj6zMfi4a5q7thbvRq
Content-Type: multipart/mixed; boundary="z0MmiO2yT7oWPERWG97Qa1OHWGxwVFKEb";
 protected-headers="v1"
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
To: boris.ostrovsky@oracle.com, Thomas Gleixner <tglx@linutronix.de>,
 LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>
Message-ID: <a4bce428-4420-6064-c7cc-7136a7544a52@suse.com>
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu
 interrupts
References: <20201210192536.118432146@linutronix.de>
 <20201210194045.250321315@linutronix.de>
 <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
In-Reply-To: <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>

--z0MmiO2yT7oWPERWG97Qa1OHWGxwVFKEb
Content-Type: multipart/mixed;
 boundary="------------4E00B26896755A3BF8CF5A38"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------4E00B26896755A3BF8CF5A38
Content-Type: text/plain; charset="UTF-8"; format=flowed

On 11.12.20 00:20, boris.ostrovsky@oracle.com wrote:
> 
> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>> All event channel setups bind the interrupt on CPU0 or the target CPU for
>> percpu interrupts and overwrite the affinity mask with the corresponding
>> cpumask. That does not make sense.
>>
>> The XEN implementation of irqchip::irq_set_affinity() already picks a
>> single target CPU out of the affinity mask and the actual target is stored
>> in the effective CPU mask, so destroying the user chosen affinity mask
>> which might contain more than one CPU is wrong.
>>
>> Change the implementation so that the channel is bound to CPU0 at the XEN
>> level and leave the affinity mask alone. At startup of the interrupt
>> affinity will be assigned out of the affinity mask and the XEN binding will
>> be updated.
> 
> 
> If that's the case then I wonder whether we need this call at all and instead bind at startup time.

This binding to cpu0 was introduced with commit 97253eeeb792d61ed2
and I have no reason to believe the underlying problem has been
eliminated.


Juergen

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/a4bce428-4420-6064-c7cc-7136a7544a52%40suse.com.

--------------4E00B26896755A3BF8CF5A38
Content-Type: application/pgp-keys;
 name="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0xB0DE9DD628BF132F.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFOMcBYBCACgGjqjoGvbEouQZw/ToiBg9W98AlM2QHV+iNHsEs7kxWhKMjrioyspZKOBy=
cWx
w3ie3j9uvg9EOB3aN4xiTv4qbnGiTr3oJhkB1gsb6ToJQZ8uxGq2kaV2KL9650I1SJvedYm8O=
f8Z
d621lSmoKOwlNClALZNew72NjJLEzTalU1OdT7/i1TXkH09XSSI8mEQ/ouNcMvIJNwQpd369y=
9bf
IhWUiVXEK7MlRgUG6MvIj6Y3Am/BBLUVbDa4+gmzDC9ezlZkTZG2t14zWPvxXP3FAp2pkW0xq=
G7/
377qptDmrk42GlSKN4z76ELnLxussxc7I2hx18NUcbP8+uty4bMxABEBAAHNHEp1ZXJnZW4gR=
3Jv
c3MgPGpnQHBmdXBmLm5ldD7CwHkEEwECACMFAlOMcBYCGwMHCwkIBwMCAQYVCAIJCgsEFgIDA=
QIe
AQIXgAAKCRCw3p3WKL8TL0KdB/93FcIZ3GCNwFU0u3EjNbNjmXBKDY4FUGNQH2lvWAUy+dnyT=
hpw
dtF/jQ6j9RwE8VP0+NXcYpGJDWlNb9/JmYqLiX2Q3TyevpB0CA3dbBQp0OW0fgCetToGIQrg0=
MbD
1C/sEOv8Mr4NAfbauXjZlvTj30H2jO0u+6WGM6nHwbh2l5O8ZiHkH32iaSTfN7Eu5RnNVUJbv=
oPH
Z8SlM4KWm8rG+lIkGurqqu5gu8q8ZMKdsdGC4bBxdQKDKHEFExLJK/nRPFmAuGlId1E3fe10v=
5QL
+qHI3EIPtyfE7i9Hz6rVwi7lWKgh7pe0ZvatAudZ+JNIlBKptb64FaiIOAWDCx1SzR9KdWVyZ=
2Vu
IEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+wsB5BBMBAgAjBQJTjHCvAhsDBwsJCAcDAgEGFQgCC=
QoL
BBYCAwECHgECF4AACgkQsN6d1ii/Ey/HmQf/RtI7kv5A2PS4RF7HoZhPVPogNVbC4YA6lW7Dr=
Wf0
teC0RR3MzXfy6pJ+7KLgkqMlrAbN/8Dvjoz78X+5vhH/rDLa9BuZQlhFmvcGtCF8eR0T1v0nC=
/nu
AFVGy+67q2DH8As3KPu0344TBDpAvr2uYM4tSqxK4DURx5INz4ZZ0WNFHcqsfvlGJALDeE0Lh=
ITT
d9jLzdDad1pQSToCnLl6SBJZjDOX9QQcyUigZFtCXFst4dlsvddrxyqT1f17+2cFSdu7+ynLm=
XBK
7abQ3rwJY8SbRO2iRulogc5vr/RLMMlscDAiDkaFQWLoqHHOdfO9rURssHNN8WkMnQfvUewRz=
80h
SnVlcmdlbiBHcm9zcyA8amdyb3NzQG5vdmVsbC5jb20+wsB5BBMBAgAjBQJTjHDXAhsDBwsJC=
AcD
AgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey8PUQf/ehmgCI9jB9hlgexLvgOtf7PJn=
FOX
gMLdBQgBlVPO3/D9R8LtF9DBAFPNhlrsfIG/SqICoRCqUcJ96Pn3P7UUinFG/I0ECGF4EvTE1=
jnD
kfJZr6jrbjgyoZHiw/4BNwSTL9rWASyLgqlA8u1mf+c2yUwcGhgkRAd1gOwungxcwzwqgljf0=
N51
N5JfVRHRtyfwq/ge+YEkDGcTU6Y0sPOuj4Dyfm8fJzdfHNQsWq3PnczLVELStJNdapwPOoE+l=
otu
fe3AM2vAEYJ9rTz3Cki4JFUsgLkHFqGZarrPGi1eyQcXeluldO3m91NK/1xMI3/+8jbO0tsn1=
tqS
EUGIJi7ox80eSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuZGU+wsB5BBMBAgAjBQJTjHDrA=
hsD
BwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey+LhQf9GL45eU5vOowA2u5N3=
g3O
ZUEBmDHVVbqMtzwlmNC4k9Kx39r5s2vcFl4tXqW7g9/ViXYuiDXb0RfUpZiIUW89siKrkzmQ5=
dM7
wRqzgJpJwK8Bn2MIxAKArekWpiCKvBOB/Cc+3EXE78XdlxLyOi/NrmSGRIov0karw2RzMNOu5=
D+j
LRZQd1Sv27AR+IP3I8U4aqnhLpwhK7MEy9oCILlgZ1QZe49kpcumcZKORmzBTNh30FVKK1Evm=
V2x
AKDoaEOgQB4iFQLhJCdP1I5aSgM5IVFdn7v5YgEYuJYx37IoN1EblHI//x/e2AaIHpzK5h88N=
Eaw
QsaNRpNSrcfbFmAg987ATQRTjHAWAQgAyzH6AOODMBjgfWE9VeCgsrwH3exNAU32gLq2xvjpW=
nHI
s98ndPUDpnoxWQugJ6MpMncr0xSwFmHEgnSEjK/PAjppgmyc57BwKII3sV4on+gDVFJR6Y8ZR=
wgn
BC5mVM6JjQ5xDk8WRXljExRfUX9pNhdE5eBOZJrDRoLUmmjDtKzWaDhIg/+1Hzz93X4fCQkNV=
bVF
LELU9bMaLPBG/x5q4iYZ2k2ex6d47YE1ZFdMm6YBYMOljGkZKwYde5ldM9mo45mmwe0icXKLk=
pEd
IXKTZeKDO+Hdv1aqFuAcccTg9RXDQjmwhC3yEmrmcfl0+rPghO0Iv3OOImwTEe4co3c1mwARA=
QAB
wsBfBBgBAgAJBQJTjHAWAhsMAAoJELDendYovxMvQ/gH/1ha96vm4P/L+bQpJwrZ/dneZcmEw=
Tbe
8YFsw2V/Buv6Z4Mysln3nQK5ZadD534CF7TDVft7fC4tU4PONxF5D+/tvgkPfDAfF77zy2AH1=
vJz
Q1fOU8lYFpZXTXIHb+559UqvIB8AdgR3SAJGHHt4RKA0F7f5ipYBBrC6cyXJyyoprT10EMvU8=
VGi
wXvTyJz3fjoYsdFzpWPlJEBRMedCot60g5dmbdrZ5DWClAr0yau47zpWj3enf1tLWaqcsuylW=
svi
uGjKGw7KHQd3bxALOknAp4dN3QwBYCKuZ7AddY9yjynVaD5X7nF9nO5BjR/i1DG86lem3iBDX=
zXs
ZDn8R38=3D
=3D2wuH
-----END PGP PUBLIC KEY BLOCK-----

--------------4E00B26896755A3BF8CF5A38--

--z0MmiO2yT7oWPERWG97Qa1OHWGxwVFKEb--

--bInmAjsEBwVQG9mgj6zMfi4a5q7thbvRq
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAl/TDwgFAwAAAAAACgkQsN6d1ii/Ey8h
xggAkCsUD7isOuCqEaUo01HAUjpM8mZxAWSEsOLkScDlic57fpNsYS+rZOVeFHDluVxb/jn8HPuE
LR2JRJJAoeDn0oVgoTexsNoc9s8tTVlR9AJDCBkQkfUCyo3m8fjaqh0uWYt8Fq5hiDLYdtopGANt
SOatxh8szxVT1K7ewdOKYpq/E4LMlP/Ixqp7Vt3sLFUfbO23BK9BAQIN4HjEJ8UhwJmx97xEz4MQ
3uq2q9YtvtamCfptwByf8jIwqQyfSTBFfng5U6S7cx5rxXjTnWWg2uK1+Yg6YeJ7rKitwBc87VUp
3/xQ/cnnv/3SzOeVN5mv6RBsdEMDniBwFSlF8BwRpA==
=wkA2
-----END PGP SIGNATURE-----

--bInmAjsEBwVQG9mgj6zMfi4a5q7thbvRq--
