Return-Path: <linux-ntb+bncBDLITANI5EARBFMP6WHAMGQET5GPVMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id E16B448AA12
	for <lists+linux-ntb@lfdr.de>; Tue, 11 Jan 2022 10:02:13 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id r65-20020a1c4444000000b003478a458f01sf1183951wma.4
        for <lists+linux-ntb@lfdr.de>; Tue, 11 Jan 2022 01:02:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641891733; cv=pass;
        d=google.com; s=arc-20160816;
        b=po+ucTsYrXHzUEOMa4PnkGBgA25lu7LLHm4hb+1dI8sAEIttmpgHaeLnMtR5DYisV4
         xeYpYKkNdvk5vQtv/9eMlISUnyGGsSw0Jx5pp86jDZDkMDZFtqln2gupCtmMz9ozctBE
         aVW9R8vAA+u3ZgDmCGcGmUxMZkztBJsjDwbAwWiHQr33LGQuJcY82RslAzLDiNzjhV6U
         3MJ92CocgfugyWKu4uE+g8N78Ym0dauQQacfjFMJZVevDzyFrjYdd8zDxpCzwrMNjzon
         jQKjp/UUSjpifvYMddO5xMxWj3wOG4TKeEjggd5vkCAYJhV3/Nj3fGq+PcAFw53E07vF
         asqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:sender:dkim-signature;
        bh=qKKc11mRtvkNiwwOXz/Qxqxfclb0Qq0KdTVWayG7Ps8=;
        b=0f2RjztFGfQOHgU121TqWuFngjcpu5Dcl9EJLDuXp7+AyumSw9TxqQ/0FKq79zCTlj
         wBtvh5pp9S8Ju5G1vr2XxC63NNNXxq423Fv4/n1K3EXGrvtBSVZ9l4EH4nFEL+KOmdYU
         PzKk1G7J20u2ejVVxm5i36QGqcij8fpAlWeGq7F70UHPph3KEOR1rk/BpRVABnPLXQAX
         TIi5idNv6aZjvzJG26LO+d+7yhjwtVljqQaAV5DpkCfy6Ba0qOlAUEswes5E/gSzMQIC
         +7PvSyL/wQW6/nQiW7rdaK6lU45900XbFGRoczPh0NuO53tZ7QOA4HehmhJYgp6yQGbq
         3zaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of clg@kaod.org designates 188.165.59.253 as permitted sender) smtp.mailfrom=clg@kaod.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qKKc11mRtvkNiwwOXz/Qxqxfclb0Qq0KdTVWayG7Ps8=;
        b=sTIhH2iRS8rXvAyXTFeri3wT8ldjr8gmyE8wmBJ2FQErk/Y9l7BcWKr3RUjYBHZolH
         RrUhMjbNWMDaMa4xCEF2V3s0YR/SK32bQ7pY5LmWjmIvmQVyXSmYECC05ckyc2WfIm0S
         FvT4ZbhPGTNxJ3gSg5hoiDLsB7XFP95JBzEIT1or75TGQLsgM0+8E87Y5BzU43LtVi7/
         bFvDK8LAbZP4TxjLAstT16qH5D3mjm0wq/pkC/cFEnb91Ol7+z2o1zuBMOoZ02hN4LYK
         RCQPiz7nRl7h1zCpUB8tsoWNmLHHcZYYGR3gK57f5CTm1W62sZlaVHG4G6fjD8z5bw05
         mMCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qKKc11mRtvkNiwwOXz/Qxqxfclb0Qq0KdTVWayG7Ps8=;
        b=icg7SDauq02WBgUYZgRknmczBdFloNXrSgAxtdfDhC1aF0TpCobRC2tFmkTi/znACd
         9JOYJxBPL2EcB8/fH46uA4mjIBDpl0MH+n32Xsx5J5tbmDdjvT/5A3u5srK3yFBCPhEh
         Mce17SAV8dQ7CWWJ1Iq1tEH+TQs9baodXKlwTyowVsq3r2kem/x0ROpxuF361f/ro+Sh
         546oDcvQK5y9rnmTMedpuegFgc+MlhkTKD9HVwPGl3UGAJrlaMqNnfYn6oF8Kx/XZ8W2
         zA/qtgWujpFthBZ3LlvOOC08jYRsqmM0Vyc1HRyV4lOEIaE50FyX2Ke1FWdqx6JaBvzL
         UDdw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531twNsb+adnI3/qwyptOKP4xtuBKuY6cwJvYV9E4ppKHrt5YLuT
	sqoJ67r6a82gUE8v7ilohaw=
X-Google-Smtp-Source: ABdhPJyyYecxoxZwAS3zE/jlvzZqJr4H8qipgchphyCZwtKXuQUYoQHDPymDQl971O3qlAcm9hErKA==
X-Received: by 2002:a7b:c931:: with SMTP id h17mr1534174wml.49.1641891733529;
        Tue, 11 Jan 2022 01:02:13 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:210c:: with SMTP id u12ls615308wml.2.canary-gmail;
 Tue, 11 Jan 2022 01:02:12 -0800 (PST)
X-Received: by 2002:a05:600c:a54:: with SMTP id c20mr1522219wmq.48.1641891732622;
        Tue, 11 Jan 2022 01:02:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1641891732; cv=none;
        d=google.com; s=arc-20160816;
        b=wAHc93+ikLEKYGK/pHq9dPrLX+0ziL893F2fkGe51qr3TJXVg8SzzpvHtK41XjkgPt
         MmiB/QYFB3Tm3Pvuk5l9q07Bumz7tIhFKSXSHjy+MB3Q8V1mEHhEXkowNheHNX8az6xe
         bXO0CPXCtrpWmo+u/bbViTHEe7q1Vgl1DtMUwFIHOIKp7UGaK5/uhKF9Mgjm88FHdvsk
         oqCNg000HMCQV4RH6QEHDbOx4WW+HzQm22qtT1O7r3VRQsqLaKBrYb9QeWDUZMTnLo4W
         WTK3vgOP38oZKMXnR2jGd5k+DzjgkY1erjlntMWcP2mGkpwfykZbm7Jgo/nNTyv0o0y4
         Lwbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=tTRhTQeymNCpTHJApsWHMq0yHcW/3qzZQVvVpkHL5aY=;
        b=dXVugi0Fj626PT7Goo35fN5up5BP1O44pj5yvp9MyUlK6ewOS22aA8YtdMdB3avG/2
         wq9snsg3umpu4ZgVcMeJvPiWsPmwUyN/D93tZ/GDSsPQVpr2cYyULPOiVbFz4deCJw4n
         CBdeFxKmYsT52f7yc6ph18ivcRVzu9V/2RZiffBXrk9XANBWqquLrCQlnv8lVMK2fxb2
         tkpBf3H+6cWPkY4ZaoA6kKZw5N+zoye+gwyu/jvd4xxbBGtNyLSg+XbWMZKHl/U4VVyO
         gzvaZAcGQnHE+VL1vMYHvDbHHspPad7I6YpaDke4oE8Zs6ePXWgm+1Jp4mqSdl/Ia1/X
         qceg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of clg@kaod.org designates 188.165.59.253 as permitted sender) smtp.mailfrom=clg@kaod.org
Received: from 7.mo552.mail-out.ovh.net (7.mo552.mail-out.ovh.net. [188.165.59.253])
        by gmr-mx.google.com with ESMTPS id e13si473474wrg.0.2022.01.11.01.02.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 01:02:12 -0800 (PST)
Received-SPF: pass (google.com: domain of clg@kaod.org designates 188.165.59.253 as permitted sender) client-ip=188.165.59.253;
Received: from mxplan5.mail.ovh.net (unknown [10.108.4.36])
	by mo552.mail-out.ovh.net (Postfix) with ESMTPS id D4DDE2252A;
	Tue, 11 Jan 2022 09:02:10 +0000 (UTC)
Received: from kaod.org (37.59.142.95) by DAG4EX1.mxp5.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Tue, 11 Jan
 2022 10:02:01 +0100
X-OVh-ClientIp: 82.64.250.170
Message-ID: <83cac5d2-b5f2-836c-1f4f-bfe054a8bedb@kaod.org>
Date: Tue, 11 Jan 2022 10:02:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [patch] genirq/msi: Populate sysfs entry only once
Content-Language: en-US
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
CC: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex
 Williamson <alex.williamson@redhat.com>, Kevin Tian <kevin.tian@intel.com>,
	Jason Gunthorpe <jgg@nvidia.com>, Megha Dey <megha.dey@intel.com>, Ashok Raj
	<ashok.raj@intel.com>, <linux-pci@vger.kernel.org>,
	<xen-devel@lists.xenproject.org>, Juergen Gross <jgross@suse.com>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Niklas Schnelle
	<schnelle@linux.ibm.com>, <linux-s390@vger.kernel.org>, Heiko Carstens
	<hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>, Logan
 Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-ntb@googlegroups.com>
References: <20211206210600.123171746@linutronix.de>
 <20211206210749.224917330@linutronix.de> <87leznqx2a.ffs@tglx>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
In-Reply-To: <87leznqx2a.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG6EX1.mxp5.local (172.16.2.51) To DAG4EX1.mxp5.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 62e82270-dbcc-463c-8f53-caaee6d6cca0
X-Ovh-Tracer-Id: 5157184527403223894
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudehvddguddvjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefkffggfgfuvfhfhfgjtgfgihesthekredttdefjeenucfhrhhomhepveorughrihgtpgfnvggpifhorghtvghruceotghlgheskhgrohgurdhorhhgqeenucggtffrrghtthgvrhhnpeeigedvffekgeeftedutddttdevudeihfegudffkeeitdekkeetkefhffelveelleenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnhehrdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheptghlgheskhgrohgurdhorhhgpdhrtghpthhtoheplhhinhhugidqnhhtsgesghhoohhglhgvghhrohhuphhsrdgtohhm
X-Original-Sender: clg@kaod.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of clg@kaod.org designates 188.165.59.253 as permitted
 sender) smtp.mailfrom=clg@kaod.org
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

On 1/10/22 19:12, Thomas Gleixner wrote:
> The MSI entries for multi-MSI are populated en bloc for the MSI descripto=
r,
> but the current code invokes the population inside the per interrupt loop
> which triggers a warning in the sysfs code and causes the interrupt
> allocation to fail.
>=20
> Move it outside of the loop so it works correctly for single and multi-MS=
I.
>=20
> Fixes: bf5e758f02fc ("genirq/msi: Simplify sysfs handling")
> Reported-by: Borislav Petkov <bp@alien8.de>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>

Reviewed-by: C=C3=A9dric Le Goater <clg@kaod.org>

Thanks,

C.

> ---
>   kernel/irq/msi.c |   11 +++++------
>   1 file changed, 5 insertions(+), 6 deletions(-)
>=20
> --- a/kernel/irq/msi.c
> +++ b/kernel/irq/msi.c
> @@ -887,12 +887,11 @@ int __msi_domain_alloc_irqs(struct irq_d
>   			ret =3D msi_init_virq(domain, virq + i, vflags);
>   			if (ret)
>   				return ret;
> -
> -			if (info->flags & MSI_FLAG_DEV_SYSFS) {
> -				ret =3D msi_sysfs_populate_desc(dev, desc);
> -				if (ret)
> -					return ret;
> -			}
> +		}
> +		if (info->flags & MSI_FLAG_DEV_SYSFS) {
> +			ret =3D msi_sysfs_populate_desc(dev, desc);
> +			if (ret)
> +				return ret;
>   		}
>   		allocated++;
>   	}
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/83cac5d2-b5f2-836c-1f4f-bfe054a8bedb%40kaod.org.
