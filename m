Return-Path: <linux-ntb+bncBDAMN6NI5EERB2MZUCGQMGQEAS2EBGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB07465A30
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Dec 2021 01:01:47 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id d7-20020a17090a7bc700b001a6ebe3f9cbsf1048042pjl.0
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 16:01:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638403306; cv=pass;
        d=google.com; s=arc-20160816;
        b=v/Wyetl5OkVoBMWyQGvd/63/H6gYUZUzde/cv8sfHlB1PKCKhPdg2N/QT8+BhdcoA2
         UqN+l6PAtxPx10OgGfut7U/pDMgCg3y1GzbfIOemtBjwp63fBU6C6G/uprO9q1mFS8LJ
         ci09SzLvbzTFfl14yECjNBJRAW++5pXUfpSnFTwc21igR7X0PgyiT2b7dpUU/+Hh4sa2
         y19u1/gHXSnC/U9xvNK9CfTfw7YgKhnT+nnG+54voyUc+g/OW1SxqZhEbJeBistDadz1
         zdelJK6dkPYB4Uy+Izx5D3r1UQ3U3O+kViP5PgFT/agwBiWrkXbno6bZWiDrAqt6tarj
         k1jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=o1Q3gbIKLHHTWUCcriu9uSpShUXAFMLuw+p7WCtv7dk=;
        b=EI6ZHd3LgIUqmfnF5eIEdELC64RejYB79veduuC3UOU/Fnm8d7oR8BMRx+s1Jga9TU
         CTLLZte+JoygFV6K+7UNbKYinmo6qJMwHRSoUoxx89TdB2sCcYHnGopBKrgB0v2P0HL/
         Epee7I/n8RVp4bWAsdCGCx3FWu6cz2U9IywOGq5W7UezILmnjqrGE65LaqeyKPnbyzXF
         HauiTI83wAEzDvVt0zFc4Sbnjwv7t8WkDcVxXFHASkujpNcYV1AhoduiACkuObbsKFma
         CUoDzQmaRYIXNRKCTl5Ciph3wkyuyk62ab4JJwzIhj9I6OKvhzWQUt9Hxi0xUrapDYZT
         FEdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=wwn+hpt0;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=EgThZXNW;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o1Q3gbIKLHHTWUCcriu9uSpShUXAFMLuw+p7WCtv7dk=;
        b=ZjRQLJJj5E8ZlgHvFiKfqK5cSh4lbJrbNAsZOXX6UuOIgF78ayAV7QV02YPdNjpdwr
         4xEetzNuSD54xlP3hD0/bcgRnDuT6g2wxERUHQbf54BtVCMvgRCEak6nZZVteXAvUVwD
         t0phZWyg987KjQpmjgyETwFL/nQrR3SMQ2udkF2fHT5pHnTFV8sZ5KHs2QT/Kp3HrBNu
         FwAOoCCfE1bU2hVMpZMT5yQf/jzFLj5HlP/aonBU1Vfj+HbnPmHH9iCOwXHyJNXNFojm
         PLJ82NrA89A6c0tIkN9hc4aamhqzLgNZCyTF1Z0sgP4WAl7+ZWNQLw2W8XvcNmbBQGik
         0/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o1Q3gbIKLHHTWUCcriu9uSpShUXAFMLuw+p7WCtv7dk=;
        b=brS1z2BEjj3O1b030GPa9cr85k5MjCJWYk+N3Pbfe56t2AJ98IjsBwUUcvNm/80ADm
         H+0mKYtmFwS3sOul8yzkEkQyVTw0C2QC3B4GFReD91cQcCvPsJ8nwY8QNEfdL3OCv1Cn
         ELdq6nco5S9HVjhCGclF505roFlbhPLkPcgmqlJIWHUT+SQxRJwi1Dlhwcji6xeCSe0h
         MO34/3Q20PmLAcBEFFVenvXbKNxXMRU/d9bt8F4AJ8uUZZYZ+vl1ATov3ZtKVvNwaq30
         J0YI+IWSjVjIZUDcGMUT8gbnLlvXA3OgSH/3X3tkbKOra+upM7HDr5RJ6zKQ91jtww0p
         vryA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531IRXTGm0gkbg+ZkYY4rPZSS2RJeP1V/4Rl1fEoc6nxhcHG3E75
	Hr/4iNNyZ2Ix4Mk6t76stLI=
X-Google-Smtp-Source: ABdhPJx9eLbignbgbB8ylOtEC6BZjFO3gcG9eVRGuujTyAsm4I6vXOEipIU4EoO3/94E7U/R7GoQNw==
X-Received: by 2002:a63:91c1:: with SMTP id l184mr6914966pge.486.1638403305932;
        Wed, 01 Dec 2021 16:01:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:80f:: with SMTP id m15ls1634989pfk.0.gmail; Wed, 01
 Dec 2021 16:01:45 -0800 (PST)
X-Received: by 2002:a05:6a00:230d:b0:49f:b8ad:ae23 with SMTP id h13-20020a056a00230d00b0049fb8adae23mr9298792pfh.80.1638403305411;
        Wed, 01 Dec 2021 16:01:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638403305; cv=none;
        d=google.com; s=arc-20160816;
        b=qQKFFdh+Bls2ryL/egHABD7d7XX6tjlXk3zgMUmw41R+EDqurgVg/rWG324gPivNyn
         mP10sPGzFt3t6L/i52hOfz1tvbyJ1/Do8HpkzI93sgJVRLEgldhd6P0Asc2IjnS1dfWq
         sZWkBZyXqfEdenNWysK1OBWPBL3RpBpKpRxaYvtW0rMiV21hf4t4kj1Da/AlyrZqYIU/
         xhBMGGZ40Gn8vAzb5iqg+ZDY/t/XB+pq5Q+GJIc1KuFy3XSTTL3Mv+7l4jjzoEptciRc
         DJkM15UnBOyayEfHBo4LuUhxfr4MFJv4BAEUltJn567BmDJmC70TSVFXRgByUO3tMyiP
         hfBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=sL+YIaY0kXx9h0ZbGxqN7dkvXLUzeLZfDG9h71cyvO0=;
        b=Ff7ZlWriHA4q3xrsHB8odLMhkOLKts//PqnS2K74rljPYAyZlTwJ0lAXgyc3u4jT/Z
         KmgUnHb8JQvs2Z/4hZtGCb8YVY3oTrpI318BHO5EGczQnVLJefD6RCNdxpQB09Hqn79S
         FN8jFzs6AFWooPIXacdxf8A7GKopqzCxi1Yw5Kt8yp+XedaF7P2SOEDLeomq6n9qHZoD
         upXcsA1kCbiHusRrzgrQDGFqqb9vz0aSJpNWgWw6/AbyhipTfhNGQATqCGWs+hxPxcFw
         2Qv52js925sAX0hftwvBF8XDwppH+lytRZSFUjmNWIJ96HesBHb9bMLFQrnhVawA0kIr
         Clxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=wwn+hpt0;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=EgThZXNW;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id pi11si1234325pjb.2.2021.12.01.16.01.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 16:01:45 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>, Ashok
 Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org, Heiko Carstens
 <hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
 x86@kernel.org, Joerg Roedel <jroedel@suse.de>,
 iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <87mtlk84ae.ffs@tglx>
References: <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <87ilwacwp8.ffs@tglx> <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
 <87v909bf2k.ffs@tglx> <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx> <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx> <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx>
Date: Thu, 02 Dec 2021 01:01:42 +0100
Message-ID: <87r1av7u3d.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=wwn+hpt0;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=EgThZXNW;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Jason,

On Wed, Dec 01 2021 at 21:21, Thomas Gleixner wrote:
> On Wed, Dec 01 2021 at 14:14, Jason Gunthorpe wrote:
> Which in turn is consistent all over the place and does not require any
> special case for anything. Neither for interrupts nor for anything else.

that said, feel free to tell me that I'm getting it all wrong.

The reason I'm harping on this is that we are creating ABIs on several
ends and we all know that getting that wrong is a major pain.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87r1av7u3d.ffs%40tglx.
