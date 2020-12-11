Return-Path: <linux-ntb+bncBCS5BWNH3ENRBUECZX7AKGQETWXNMRI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A38A82D7311
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 10:52:17 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id l8sf10335743ybj.16
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 01:52:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607680336; cv=pass;
        d=google.com; s=arc-20160816;
        b=KEEuIyD8xDhNYiEepfcnx2qJNz2TcRXahdsNMka3XOkT2skIdoJkL3cTZcdJ8R4MWA
         7d9QOE7zmADi3EtVpQEv02ZdiAAUibAyG4PuOrK6gEYNstCIC0Z0MGpqlkWC35Q7ZBuA
         E7Lr8CEphOu4elds+bJhEB02mGAZ2VSsFuy4+qpZnYjDqrro8qrFP+MolwivgmasHkJ+
         9gTEjJo+meVrOKQ0jpkeKFU2ruAQ9df5Ves0r39u+Qxb2Sl77fc0P8d+yamhBWgPKIfn
         JLw+LK95l49GxumH3xyKuW4l6pPeXdMWdfwzi1Jevdf5Cu9XfRplJavsniEJA1m1TuaP
         JSyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:organization:in-reply-to
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=zGGVwZuQ8Cm5Ms0WF2adoSiUfbn4jg+RYp6YA6S73xg=;
        b=xahV063AbA0Wti+l1QSFeRSkX3L3xHg8W7BheFUuvn9+NdjHTVtt0mNHBKiQjIx1UJ
         HVa7WtT/wkE8RB2ayu/qtnSfLxqpliQ74w7bnxEjpZOTqAWrWrDXdEbxOkcD3mpQ0538
         GZliOxd/4qC9goXHgmuYIsxFUpt6yRT1x8RCESBQckmkpUvP09du2JgQe9HfHDiBM5bO
         TaogQ99y5u7+TcJdAELnbp/DuqbkUp0SNq65Ghp2gC+fAFvYvx2nxGr7v/nFVQf5p0jk
         lAX2MUJFq0flnqZuWtioc5P8WQMoLJJBvULbtp01TjaioywIfy29gCEMnoCGtdVJ23Gu
         Xlng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:in-reply-to
         :organization:references:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zGGVwZuQ8Cm5Ms0WF2adoSiUfbn4jg+RYp6YA6S73xg=;
        b=TM9zn29JyZvBinqP7c8/I/Zxur9FHCk4vI07ee9lRyOerHWHdn+gcCJUxg6OvEIUIt
         AyiXw1Tlq6N7lhKvdanHh8mRQPar7tNi7QXombHcehujpDoB2SCsOvjSO/2K1f/5hgHZ
         XYhZ0S0cqy5YBjAXp1n1J5sT5ANnLz79wSN6DndJZ7Q9aRQdhj9CSqYCxkUaMfLW+St1
         zuV7BTWI6L/ETzTVNEHj5HQHMbz4ACy+1pY2BJL3Z43zaToiqAaTO+G5GKZvH2Guprrr
         1jRYm6ErMbIQcXORbh25hJ7Z1C5SJxtEuVs6+UIuZj3pfJ1pJzAmiunmA84PuptuvV0o
         IN2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:in-reply-to:organization:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zGGVwZuQ8Cm5Ms0WF2adoSiUfbn4jg+RYp6YA6S73xg=;
        b=spNe1sdTLCsKUAu86ukBS1U7EAarzolNjGLYk3KfduWiRYUAa0ML5wBqu1gy0ZeekJ
         K6726lMBWWX3c/50alBaasnZ2Tj5oWM7wKNsNgfWnVZE/Nx83yQNYKuXrRoqHZFxOKd/
         4SC0eCtb/hsQzpx5MhHelE8lj0E/RdgK16uPdIskaiXAM4Xjqdrb1s2Y03e/8vrQUFMZ
         oPlELhf+/JMClf7HSOmYoiTHxCgx9qOAcs0KIeG10jM0QWguearoyESPXlPkvSK3B/DB
         hQ1fBOoSt35t8kCb94M8w+jAz7O62fFxePva/8siY55mC+7Zzg5lzHsHMV45+iS88F1e
         gcqg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530L5+UyWp73OiIpBMM/WREfZMoiFFN32CN8xyLYtF/n/yjpqn+/
	Q00ZRPWox8OYowGP7ZGGukU=
X-Google-Smtp-Source: ABdhPJzrfEV1ZP+uE2JrzEOjtn37JoEGzljHKmbVMXZLhYvjTp6CoaZHOxU3WPsJpiB5Y4XL/sgJFw==
X-Received: by 2002:a25:b6c2:: with SMTP id f2mr17500002ybm.261.1607680336525;
        Fri, 11 Dec 2020 01:52:16 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:41d6:: with SMTP id o205ls3918567yba.10.gmail; Fri, 11
 Dec 2020 01:52:16 -0800 (PST)
X-Received: by 2002:a25:d0d4:: with SMTP id h203mr12413201ybg.274.1607680335953;
        Fri, 11 Dec 2020 01:52:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607680335; cv=none;
        d=google.com; s=arc-20160816;
        b=gpvS5NuxLC1P5hzcDZcGXdA8/6DylS+wQqox/2H4wU5AcL4T1bPhAKeXqy+ya1xJPv
         qV3BRbbvj+GSCg2ci9E3hccRbeBtxfl3MeIBGCzBs7E5qTVeIQMnB/HHtFqlJp2YJFrW
         o919hMPLqJey+33jIYPJqN5FuV5DVFmbaLJEGsg/2hWryhNo+bc1CmKXjBB7q4x9A0vr
         OZ5tiT7mandnO/FlbX4oe1/izK9eTvfjae2W1rF8tkM1qUjn3OCWvON66ndmXSxlqQzi
         qUhKEBFO1MkqXRPuTrr4UqKyIfH1cuv0M4BqQEOeAeupmqJyhKY4WrrFgvRj08QYp1kB
         B5fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :organization:in-reply-to:subject:cc:to:from:ironport-sdr
         :ironport-sdr;
        bh=TD8am/Ai/jiwoG/IY71MvYmRV39zRERprjrs56RVvNM=;
        b=vtAginx+NO4bvmi7uBtbzx6nRO+LpWF5KaNs/lwJAQcOWsd5Xxw1x/5hW2mcragEgs
         jSOEVKkt2w9ObdsqVjgaLMZTRY6+yN2ccayTeP4RiD+6p/6M3xXzeNssmqmaf2MntBiN
         H5xW86n9HaIuFvKmxyqlMwQvRvvRs69cIvWrXiR5E47Rp5I1e+Qnu8A1Cm5iigud61Se
         dvoitm2XcNrvF3/SAh4NjLQ4lG4IcQBF8btsJhTUS5OcbZIQyf3jpX2oBu1ivzZAaZGr
         3KSGaDRCNOiMyfl8lEcSIQZhhJMwYtbIfB85KaQdbfQj2JK7fswsh7vtvhQhzsZMM+Cn
         KeRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=jani.nikula@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id k6si581862ybd.5.2020.12.11.01.52.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 01:52:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jani.nikula@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: Lq9IWofG504yKx1ByopMkg+HAY1fIDgD7JciSFtBvP9V/z4Et/wZMw9meRAj209xrA4w70QBld
 8ChGxy+nd1LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="173641942"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="173641942"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 01:52:14 -0800
IronPort-SDR: PVl8OU8ROdRYNRcuuI1cwHnm0Pahwqqsf4O0coU6GZWsYYiN/hRTouvAiYE5Ccs0+xvEJJqBLa
 InJ3eAdxnHfQ==
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="440808660"
Received: from dkreft-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.158.206])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 01:52:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Thomas
 Gleixner <tglx@linutronix.de>
Cc: Mark Rutland <mark.rutland@arm.com>, Karthikeyan Mitran
 <m.karthikeyan@mobiveil.co.in>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Linus Walleij
 <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org, Chris Wilson
 <chris@chris-wilson.co.uk>, "James E.J. Bottomley"
 <James.Bottomley@hansenpartnership.com>, Russell King
 <linux@armlinux.org.uk>, afzal mohammed <afzal.mohd.ma@gmail.com>, Boris
 Ostrovsky <boris.ostrovsky@oracle.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Dave Jiang
 <dave.jiang@intel.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Marc Zyngier <maz@kernel.org>, Helge Deller
 <deller@gmx.de>, Michal Simek <michal.simek@xilinx.com>, Christian
 Borntraeger <borntraeger@de.ibm.com>, linux-pci@vger.kernel.org,
 xen-devel@lists.xenproject.org, intel-gfx@lists.freedesktop.org, Wambui
 Karuga <wambui.karugax@gmail.com>, Allen Hubbe <allenbh@gmail.com>, Will
 Deacon <will@kernel.org>, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, linux-gpio@vger.kernel.org, Stefano Stabellini
 <sstabellini@kernel.org>, Jakub Kicinski <kuba@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 David Airlie <airlied@linux.ie>, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, LKML
 <linux-kernel@vger.kernel.org>, Tariq Toukan <tariqt@nvidia.com>, Jon
 Mason <jdmason@kudzu.us>, linux-ntb@googlegroups.com, Saeed Mahameed
 <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Intel-gfx] [patch 13/30] drm/i915/lpe_audio: Remove pointless irq_to_desc() usage
In-Reply-To: <X9J7h+myHaraeoKH@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201210192536.118432146@linutronix.de> <20201210194043.862572239@linutronix.de> <X9J7h+myHaraeoKH@intel.com>
Date: Fri, 11 Dec 2020 11:51:57 +0200
Message-ID: <87zh2k7jr6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jani.nikula@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jani.nikula@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=jani.nikula@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Thu, 10 Dec 2020, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Dec 10, 2020 at 08:25:49PM +0100, Thomas Gleixner wrote:
>> Nothing uses the result and nothing should ever use it in driver code.
>>=20
>> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: David Airlie <airlied@linux.ie>
>> Cc: Daniel Vetter <daniel@ffwll.ch>
>> Cc: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Wambui Karuga <wambui.karugax@gmail.com>
>> Cc: intel-gfx@lists.freedesktop.org
>> Cc: dri-devel@lists.freedesktop.org
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thomas, I presume you want to merge this series as a whole.

Acked-by: Jani Nikula <jani.nikula@intel.com>

for merging via whichever tree makes most sense. Please let us know if
you want us to pick this up via drm-intel instead.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_lpe_audio.c |    4 ----
>>  1 file changed, 4 deletions(-)
>>=20
>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> @@ -297,13 +297,9 @@ int intel_lpe_audio_init(struct drm_i915
>>   */
>>  void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
>>  {
>> -	struct irq_desc *desc;
>> -
>>  	if (!HAS_LPE_AUDIO(dev_priv))
>>  		return;
>> =20
>> -	desc =3D irq_to_desc(dev_priv->lpe_audio.irq);
>> -
>>  	lpe_audio_platdev_destroy(dev_priv);
>> =20
>>  	irq_free_desc(dev_priv->lpe_audio.irq);
>>=20
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=20
Jani Nikula, Intel Open Source Graphics Center

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/87zh2k7jr6.fsf%40intel.com.
