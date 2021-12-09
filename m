Return-Path: <linux-ntb+bncBDOJZOXA5ABBB5FQY2GQMGQEV37HQOI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF8746E220
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 06:47:33 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id i3-20020a056e021b0300b0029eceae8532sf6063030ilv.17
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Dec 2021 21:47:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639028852; cv=pass;
        d=google.com; s=arc-20160816;
        b=qvf3XDg/1fdsiKlOedV5Q9ec8x4oORhOlqzPYQXcn73xQA5dO2uOQR6dCFT+aKe0CX
         ucOcjdiIHSFc+p1+ZkOnng3tTv5z6OUiVnZV0ONIllQRrJbJJto/fag0V4+wMqrgiXJ0
         4SgUjnko1ooHiW3u9AGHf1uR28invgOUHZGWpLbBTZz6Nhd/s53tT9lf1d5MygEVRB96
         VhLvshz+3x2o/aYfdrA+on5y+kfCns1PFx1DUaqBZyH4yPk+5O5zYByAbG65YgKOS30H
         tFq+YMnEF+WZwfQu5VDZaNZQd1J6pEA77ADI4ZgAzZ4MzQ424jv91qIN4uPbe1U4ML2Z
         JeuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ImDgpZXfhdgE+WY3QaDEpS861R3A8DROlOc49Gxjmss=;
        b=j3h9vniUiG5IIASZltikyII7ruiMPDKT5axY6uHSqh24q+BO1cvGm6I7OzrdGYIZpJ
         u8QJs1HL7Hqw9O12Av9+VuDClECHPMacf/nVo9DxIMgbg5Ill6kDDJkN5ZOSMQbNEW1d
         EkP2UfOMC8gX1dJsX4/vmYRm1EgblBTOE6I1+XdymGhJBlHzHPJ7RnYLLoFepbkrvPlI
         1xFc+bjK2FILIdAS2mZXsbYDSXZTaMtz1Ay4TPR054a7ahx/EailNODW51AGAWoNVQmG
         EGaGEyG7pnRDfRyxwEQcLzmA7bpBIiE0Sjj+S8OBeXrbwkfwF7jqAVxg5Wx80odsaL2H
         y3mQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E8Z6RRx5;
       spf=pass (google.com: domain of jasowang@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ImDgpZXfhdgE+WY3QaDEpS861R3A8DROlOc49Gxjmss=;
        b=g961Xb/yd5wIsSQZaqGddQmNwT8F0f9dcpbURx5epWnmBpZUhu1V3xp9qzwbWTmJpF
         WsWvThkQ3IdFLhDwCSeoFO0rtg64DV0vkZkW0wQOfiSnvTJLDvCw3ze/u33y0lcOeaYm
         /EQjPHYieXXlHzHz0O+vIYIzR+ThYn4Fq/j4p5m3GbKP0QtXoY8SNaeIbzy4y8/tMXlY
         dQ3G6wfAk7waNS6WjBr+nDoU1WkgRygY1Df8zhJgKzKnrvwXDnRouidreDnrQFVOdOOU
         wC2JrfOkMIyek9DqWWLyvMavw1GfX6GBm36qsOMjHkCmc1T0pOKm1JyrZ6lcCgTmFmNR
         A2QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ImDgpZXfhdgE+WY3QaDEpS861R3A8DROlOc49Gxjmss=;
        b=UEJlNY/rCjkMcQUc33SKfMEaSxtNHqhBhXdFDO54/8l3dlF6grRg6cNUNcGLnSouda
         UcIwBYXxlv6ItHDGeZlchqk660lzhR9CAZtNW99t9XISPJ+nVd1Bocyz0caPRUFefL2A
         Ah/ZW7fre+Q6ooqj9CGPY0ACvVNVAgXOm1qirfRsbd2iiWynSRaQc+av7l75Kz8Hrtkd
         L98VelXhvSvWBQ6s8NV4I82O3JUzYxIZ+O1NdoMUFmJTJhNdoEC1uwZUy1laYXScL/a8
         5JIzrh2f4/1v1+mtRdciWhDItHLt3Eyvf2fahZNyWEyIu14cJSSpOoUoxalGW5km5aFs
         wr1g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531aKluYfshk4cWpDqfyvlX0x+NDC+dEcQ8deitQA9xLmILrXaHr
	yRekD+8UDj3NsMnEmtAf56U=
X-Google-Smtp-Source: ABdhPJwqACeeRMTy+QYOw+CqCcrq5q93BJJU6Sv26TRVU9awHdLGgRcAti9Bq2fbjU73ARUP518FCw==
X-Received: by 2002:a05:6e02:1bc6:: with SMTP id x6mr10856316ilv.31.1639028852554;
        Wed, 08 Dec 2021 21:47:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:da:: with SMTP id z26ls417274ioe.3.gmail; Wed, 08
 Dec 2021 21:47:32 -0800 (PST)
X-Received: by 2002:a05:6602:2c83:: with SMTP id i3mr12971479iow.54.1639028852154;
        Wed, 08 Dec 2021 21:47:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639028852; cv=none;
        d=google.com; s=arc-20160816;
        b=U+PPgTQ4Vtz8o9qxVcJ5dnoE3I6T6yoYcJ5URD1qDYJOhqHcmB0GNNCLubxFNCBBXp
         73A1Hq5pRKGKg8PhKsW5/ta+I9LUxQ9nBoiUofaUB+LeV9jOpgIVHnkBWEZSmK0S3P1W
         adORRU08kVXC3gJtUemTD3bCqp0QzbTsCZq0hYZupIOdl2wfqBuuch0/wOt93IKw+9A1
         tSMcDDpGEw16Vsw66nF/Byqw4FUW7WdeD5hxRQuyih6dY1JXEe6Mq00pWo2jbQoNss5e
         JR0z+C16DJghzQDUS2NlzMXXBo282rFycRc2rA45H9012jJvsgcltLjte9zNSESPvm6n
         XgCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MTAn1ztGmocc9lVa3A3/+M3LMLwmgt1eLb7L68uXAdc=;
        b=Hzvw0f1Ylbru1pTPG8mAKJNvyuCXncBk59j35o7xy3CnlNuKxy6Ui/h+4O8jF9M7ZL
         S03LRxwAVQUBnVHGUQaNzS53X+zuRmKgNy6alebhgZ6Vg66lk1ukfeBosKmPYhEVmxqG
         iv0iMfc0mkd098320/+ePwzipam15NYYEW3vA0ujd89ufaSBlPlolRfovzI1AiP1UQ04
         2tBdHVXRhup02jX7wrrVF+/8etvgvMCiSWt2mkmc/vnTX+ftnx2dPKO0PUyauIve4XHK
         uiGbeszRoJCjEf2S6JbnswSJ62dg3IFa+0+q1R4eR9ByGglf4vqdSJh/oYg00R0tLsA0
         npCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=E8Z6RRx5;
       spf=pass (google.com: domain of jasowang@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id a15si1029037ilv.2.2021.12.08.21.47.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Dec 2021 21:47:32 -0800 (PST)
Received-SPF: pass (google.com: domain of jasowang@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com
 [209.85.167.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-543-MpvV4Rj-OZKMmaR2TgrjXg-1; Thu, 09 Dec 2021 00:47:29 -0500
X-MC-Unique: MpvV4Rj-OZKMmaR2TgrjXg-1
Received: by mail-lf1-f72.google.com with SMTP id e23-20020a196917000000b0041bcbb80798so2210657lfc.3
        for <linux-ntb@googlegroups.com>; Wed, 08 Dec 2021 21:47:29 -0800 (PST)
X-Received: by 2002:a2e:3012:: with SMTP id w18mr4000054ljw.217.1639028848306;
        Wed, 08 Dec 2021 21:47:28 -0800 (PST)
X-Received: by 2002:a2e:3012:: with SMTP id w18mr4000032ljw.217.1639028848143;
 Wed, 08 Dec 2021 21:47:28 -0800 (PST)
MIME-Version: 1.0
References: <87v909bf2k.ffs@tglx> <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx> <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
 <20211201130023.GH4670@nvidia.com> <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx> <20211202135502.GP4670@nvidia.com>
 <BN9PR11MB527696C0E8D08680FFFB6BAB8C709@BN9PR11MB5276.namprd11.prod.outlook.com>
In-Reply-To: <BN9PR11MB527696C0E8D08680FFFB6BAB8C709@BN9PR11MB5276.namprd11.prod.outlook.com>
From: Jason Wang <jasowang@redhat.com>
Date: Thu, 9 Dec 2021 13:47:17 +0800
Message-ID: <CACGkMEv_b=WLUp1_fUtfaxo9_Y95x=u+Za2-sxTRrmXe-J_jRA@mail.gmail.com>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: Jason Gunthorpe <jgg@nvidia.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Logan Gunthorpe <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>, 
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, 
	Alex Williamson <alex.williamson@redhat.com>, "Dey, Megha" <megha.dey@intel.com>, 
	"Raj, Ashok" <ashok.raj@intel.com>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jon Mason <jdmason@kudzu.us>, "Jiang, Dave" <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>, 
	"linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, "x86@kernel.org" <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>, 
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jasowang@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=E8Z6RRx5;
       spf=pass (google.com: domain of jasowang@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=jasowang@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Dec 9, 2021 at 1:41 PM Tian, Kevin <kevin.tian@intel.com> wrote:
>
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Thursday, December 2, 2021 9:55 PM
> >
> > Further, there is no reason why IMS should be reserved exclusively for
> > VFIO!
>
> This is correct. Just as what you agreed with Thomas, the only difference
> between IMS and MSI is on where the messages are stored. Physically
> it is unreasonable for the HW to check whether an interrupt is used for
> a specific software usage (e.g. virtualization) since it doesn't have such
> knowledge. At most an entry is associated to PASID, but again the PASID
> can be used anywhere.

Note that vDPA had the plan to use IMS for the parent that can have a
huge amount of instances.

Thanks

>
> The wording in current IDXD spec is not clear on this part. We'll talk to
> the spec owner to have it fixed.
>
> Thanks
> Kevin
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CACGkMEv_b%3DWLUp1_fUtfaxo9_Y95x%3Du%2BZa2-sxTRrmXe-J_jRA%40mail.gmail.com.
