Return-Path: <linux-ntb+bncBAABBR6DZX7AKGQECIK6L3Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 034AC2D7550
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 13:10:48 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id s130sf2319715wme.0
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 04:10:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607688647; cv=pass;
        d=google.com; s=arc-20160816;
        b=wo5XkkzQQPh14TJ3mAYryxaqjlyfZbc91UWtGg9L/+msNmOE+UCC4Syg4toEpF15l4
         E03Tr5BakfJGZ/zRbOpCt/Ua4wwoeAV9iUGR8pJH89Jn1KdSmA4M7SfNsUkIQei6pc50
         0kFsW7+XPf+oTVqdFMO9Dk4LdmC0u4uvfz628DhLSdtlpuYttUWGd6Tz+SZV2WnCfgeF
         ZAxtpIuwkmSowWzhGeBWfbO4qkNhXQ28bIBSKjIxkbuQQkTQ1cC6yC7a01EmIX1rI1D5
         LW8R/uPSM8+F/przwl4riuW+OzBadU0q4J6GDML7e3rSthR5txlfMcCsY8VJnaSk18aV
         mavw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/4nZKAhhjHVWPwpmBPVWHtpr+r2BfNVKz0Owk4xOS1g=;
        b=v9ZCU2r/Dz8OK9IYMf1tXzysbz9YFWkXBmH18MP/6hndpPQMVbi+alti7Rnhx4NRcC
         jtkqhZEgGknHWeavEaiIB2qIPg4RhsnhDB+qHdus2p7OjKOxKtsweuZXK/sHAOeQwLna
         o/UIOXHGi4xECrr0Cq06FIk3xarg2YC7ZLQ7nF4EFQP6AUpNskIFR9WIcG0+zc9fHRdl
         wolnLVO9yycmHpKkZfBD8SUBSec2NYudmAfVNh+3a847sbHGZ5r8rYAt457EldV4lqTe
         VWzSWkTrdhBbrTHZMORyopAgzh3fJPhirDtmpKOeCeSpgNS3hnfDURXsqwvOuo6Y+43c
         zgJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=P1ENv6gh;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/4nZKAhhjHVWPwpmBPVWHtpr+r2BfNVKz0Owk4xOS1g=;
        b=ZQq+wE2lCqN/ZE20RZLVQ+3DbEpaiQePMH2Vbwx+LAnaP7NKiLgz/hZ+Vsi+aH13A2
         3kJ+ejw7pc4eLNS1kJE5pdgx8Yv6EtMPudVxo4jNfV7bQ2k1bQUpQhgqS0UHVI9jT4vH
         7OGguU8q4CBDUtufxkyDFWsBZFMykS807sk5oIAwYFa9YKO6MGjm0vZnbT0EU+5bdKzd
         j2p4Y/9L1U9z1P9hayR3XOi6AjVOIcCpMOvlowtJPf+QyHcBf6L8xxTB+4CoTZe0jnh8
         oSGY8Q4iju2Nm1Fq9hIVxst4HgbypY1jiuvnJtWcaj27vFgbPcEYPGNwd8wMb2a3i/5U
         yGyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/4nZKAhhjHVWPwpmBPVWHtpr+r2BfNVKz0Owk4xOS1g=;
        b=qCKe+TqE8Ed/JA2nQ31/jc+ddMRDbDvBtrgPc/jWDBErVCjzdxA+2+AMVbkzrywwIX
         3N7OjOODeiPpN8zfWUjkFKsA0MzsWjci6fGs4yfR2nZAEHvOZsB6d/kj1EcbCEz8FNTw
         ktWd8LgiPM5qUJ0oW7lMSXHLpEDWsa0kTWnPFFxSNvzHT3MN7UGGcwjcMZsgNCi+zyWk
         7iLDN6VXKbBdmshZYhP2sJ4etdupdoO64vyKg+vKq9UBinLfnRXawLD+8lsTUNSsA3DU
         ti1vfxpB9+MNgbRR3639b7I00Fz8t7do/qHVEF4uxw2G6uRFruL1ZFwQhcoAljF1zgOv
         34yQ==
X-Gm-Message-State: AOAM531eTVkRUjCFsBgLx5r3gSsv3GnFcO/p5TfQth9OFeX+6s/8CoF3
	epEvM7SzKt8i//UJtq4KAdY=
X-Google-Smtp-Source: ABdhPJzaoiorRlbkAYdrTk6nL1gVhPaUeu2fyiEuaw8BrXrDemoyfV77dcgMur+LBwHs8wDuBmb1pA==
X-Received: by 2002:a5d:60c1:: with SMTP id x1mr8456327wrt.271.1607688647674;
        Fri, 11 Dec 2020 04:10:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:a781:: with SMTP id q123ls4643804wme.1.canary-gmail;
 Fri, 11 Dec 2020 04:10:47 -0800 (PST)
X-Received: by 2002:a7b:cd90:: with SMTP id y16mr13537651wmj.115.1607688646882;
        Fri, 11 Dec 2020 04:10:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607688646; cv=none;
        d=google.com; s=arc-20160816;
        b=K3LV/Y+lzL5O2/+S2arw7zZh06m1kLcyOfFmn9BfFQCNiMlfgev4+cX+0gDNhQ3FbM
         cbvqd/IivrfBxnaGkWON3zXo2zBkBwLS3wSAo+ygAJ2pQGiTMNweYOa/0jNALgdudVHN
         7619Oc05GSiONpL/NoVyxYwahTg561RswddT7Mf5c+zL6BdqoqPKsSdPNkAvhZCYo8NS
         VQXEOs9DWEi0kOp5RobdPCJOCgb1CvuAquGS5hPsueTJZu/orYZSCQKZYsk8/oK4i4HS
         3Q9DCQOfoFzm34bba6XHd0EsEcOtGJKGSYCgeSv5ofmxj6oCDTvrrkXJm78IWsk24cdD
         Gilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=aJZQMJEqjqCeKHnTDA0IPhE5vARBQoDmh6z4taBza3s=;
        b=Hfxax8KpUla3W/SfDmxlTjxZo7c1fmTImFsAoCbQeDPxiKCV7KdFmAs58q5NoEkvK3
         pJyvhDz5a8sLwoWkelZJLHikvacqf8j8ImsS75kJn+IVmbcUmEG7f86OLpeZhj2uwGiS
         fOEBHF3u2257ipQUtzDvv52szgJvcTR8K1WObEaKtXU+9C9JflhsTrDTpMHupqDaAyuc
         SpNF9ELD7rRsWCPWkbD6Q+ZbZoDZ0vdg5Z6/GBg8irCWFkUHZ9mfL00zEx5b/kgv7gEh
         KcPcd5e/fPEqrpXoBivzH0ufvPTSWd+ZM5ucW5pJLTan5hyu3WRIn7qzaN29LkdSEuBZ
         a4VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=P1ENv6gh;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id y1si253371wrl.4.2020.12.11.04.10.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 04:10:46 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 41E96AE87;
	Fri, 11 Dec 2020 12:10:46 +0000 (UTC)
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
Message-ID: <2164a0ce-0e0d-c7dc-ac97-87c8f384ad82@suse.com>
Date: Fri, 11 Dec 2020 13:10:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="qMVMfsvlAyIOVuhurM0AhbsuX1abhQOZS"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=P1ENv6gh;       spf=pass
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
--qMVMfsvlAyIOVuhurM0AhbsuX1abhQOZS
Content-Type: multipart/mixed; boundary="1SKmisPo0wwQx0jet3HDKXRMk6SQ4aMth";
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
Message-ID: <2164a0ce-0e0d-c7dc-ac97-87c8f384ad82@suse.com>
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu
 interrupts
References: <20201210192536.118432146@linutronix.de>
 <20201210194045.250321315@linutronix.de>
 <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>
In-Reply-To: <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com>

--1SKmisPo0wwQx0jet3HDKXRMk6SQ4aMth
Content-Type: multipart/mixed;
 boundary="------------8ECAEB8E864B85BAB060713C"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8ECAEB8E864B85BAB060713C
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

After some discussion with Thomas on IRC and xen-devel archaeology the
result is: this will be needed especially for systems running on a
single vcpu (e.g. small guests), as the .irq_set_affinity() callback
won't be called in this case when starting the irq.


Juergen

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/2164a0ce-0e0d-c7dc-ac97-87c8f384ad82%40suse.com.

--------------8ECAEB8E864B85BAB060713C
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

--------------8ECAEB8E864B85BAB060713C--

--1SKmisPo0wwQx0jet3HDKXRMk6SQ4aMth--

--qMVMfsvlAyIOVuhurM0AhbsuX1abhQOZS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAl/TYcMFAwAAAAAACgkQsN6d1ii/Ey+q
kwgAhqGwSjkPCHuD6iXs+izA0i+SRbhYcA5DS/prsjTsYrIr31Nv0iAWAuq87gH+Uo5StBRXaRlR
Vh9HiOFFv8ScTgdoiZDUycGN07TFuj9NJGJp/TvD+OZN17OQt2w1Pw1JeRI5RNsVTm22OMUH4Om8
D5t0xrU0zymXmndnx8OZEQ/j0W+hCRjIoNpmjegRa1p8q12pzI9FJByuAhVVTqmcfucWD2sIXlFk
ZYAwwiA5sMnSj7UYTiR6lkIWMPv4D0FJYC1GwAMI6EONFeO6SBjMqZsWhymL1P1AU1WoSAe19C/e
DRzPDV1x+jKSYVArD4THJwjqoa7QDXngm7UxnYCYdg==
=Bajp
-----END PGP SIGNATURE-----

--qMVMfsvlAyIOVuhurM0AhbsuX1abhQOZS--
