Return-Path: <linux-ntb+bncBDXYVT6AR4MRBUOOT6GQMGQE6XRKU4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F1346584D
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 22:21:21 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id b23-20020a0565120b9700b00403a044bfcdsf10099166lfv.13
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 13:21:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638393681; cv=pass;
        d=google.com; s=arc-20160816;
        b=NgHdpTDMZfYcxyoCaSVwgsmrotNy/gKHU5u+22tV5hmlZ8tEIbqtdJ0g4TvSwuGxdM
         JLk28wpkMmnre2w/qb3vJDao+MFf1DIGhkWsnfOYcKb2PbA6Z7fkxCG8rMWFBiajMOvq
         HdEQeGY9tcA1bvC6JOcaM1bHXgBH/98yl5RtpwRbIE/GzvL7bu5s8HBrTvJ9o16adVX6
         erVlwYiYpr/CVFaSxX3M9MDpoHbuGP80DVM//dBwM2/XZejYowX2Y3LttcwEUl85uM5+
         aaS9E2V5XFnWPkdUdPN8jcbPXfEYnQwpoC/zXADjgDt0h5Wo/a+k50YUlUtNdW0LS/Zw
         /1Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=owbrxN5wCN0GkR+kvTAsm9ESwHjvrVT1FK9hBkP7FwA=;
        b=dYFarc8x2NboHdryJlf78ReuaATi98CRsc4pIuJSGiNbgyBvYwRk7Riv93FkTRBdMi
         DGVXG1bTZjncdcuEbF9nhNCo33I4D56YMKuIOqyCLFXj9vzS87fvztXZBp3e+bqnXc+u
         2KjR9z4Onk5Gb0wjP+dVSl49ETdcke1x+ciDEIFs98VX3MvFveMdtFxtIR4pCaG1jEbv
         ThZJHj1bQqEZPJ3ksPeoqC6PaFnq+givUk0RbFPR1QLWcIMWIPANqyg8KM0uVG4xZJZ/
         iot+nyZpW8bbxdgSsUxiLLrotylOTyEP/Rxg1/dkywVUfaBU9Ix1j3G7gl9IOcfw+BwX
         Bueg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=owbrxN5wCN0GkR+kvTAsm9ESwHjvrVT1FK9hBkP7FwA=;
        b=fZ+bj1OYKlkEoxhhWv2jeAie272mL+CUc//gcmvpRbcsP5WL7+XZj3N44zqQ+rk0vJ
         szOh8UT2xtgYmIqOCFPRVOrp5bUQfjaogvpoPFbvnFnXdsgeei0q+9zkXu5EZEMg8nMU
         9peOxw/PEmzLq1YyC2xC2BDFbRr7l2unMvwk0oNd8CK2xxUaUQe7ZWPsw9BQ/zaNiqQI
         dLpmVft8nWVGx7Mh8Da/e8BfZXBfk0Gv0hJZP5+D/klIHX6tqaHUa0Q3N1fAWYJcNTV7
         sFa1v8jwOIMgPvMDWOh3pf0kY725L0mqh7ROHdVscCF3TlY7NzuaWopzhOlh/cyrN9bE
         BqFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=owbrxN5wCN0GkR+kvTAsm9ESwHjvrVT1FK9hBkP7FwA=;
        b=DRjlKgTM5o6L3X6jvWV0nNpscR09QUED5jx9s0/GZSm1pprY9ZmZ7jVs/t+JQd+WTD
         X7pFobJrlyqwBeape4BJimo9/ODlNDaMzmc2zcBoOeD1tRu991PWxuHnFmRKEb5MKTFe
         Krhay2ac2H1/KNqVUJOqyVoLRQz+gBYPRB6gRU9hJjXhfczfHlmG1mgGYzlQ2f5N6DXa
         OOn9ztwSd+vJbtYNevfPQfzBFOKAtBGJATmsN8ZMG7zDuQ8at7X9HLmVrmQf4gg9QlBD
         pimi5feN7S+fUAAPqxBgxSpMEHZ/BFYn820p8soV6hYpef9g/eqf98bdxwjJL0Os/Gv5
         1YKg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533UJB3m4zkvPNg5qs4gBjVHx8O5n/QPf1JPMkqSO4kiA3y71kyK
	wtC5gY8KR86BlKXlrdjkP90=
X-Google-Smtp-Source: ABdhPJwWMkEHBS0xIRzajsb0jlZ8Gr71DJIqeEJZP4ChmJgi/zCoKYRjevtT7UrBZz05o9opaAE6nw==
X-Received: by 2002:a05:6512:12c4:: with SMTP id p4mr8069849lfg.278.1638393681189;
        Wed, 01 Dec 2021 13:21:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:234c:: with SMTP id p12ls1658464lfu.0.gmail; Wed,
 01 Dec 2021 13:21:20 -0800 (PST)
X-Received: by 2002:a05:6512:4026:: with SMTP id br38mr7770485lfb.450.1638393680212;
        Wed, 01 Dec 2021 13:21:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638393680; cv=none;
        d=google.com; s=arc-20160816;
        b=X7JTnH7yOXByPP2S+jVYcg2+8h0A/PaQDXkJrbDpOLih2K86xId+Uk3nhomph5EodO
         pD6oIQYl3OBSHBUVp8tOTu/ov7hezNGDRVt8vdZ5HXTGLyf2K0SvkM1scgUopxmJsaLl
         4rY73Da6rS/Cv8759rMzavLpjpmRQmQLUYP6v/crqIpMkQOGGjwZCFt/znvgEdZ8z1Q0
         Yzq/FMUSVFYEl4AapXz3Ksyv/uJ3rlLmCVjbPyYz5oVDhtUCumKfgIdsGdfMzD2XQUtX
         0g1/706QuIUCWEjxJrTD1zkFJt2QOV2cIkuyX1gWVuHYAzIz3IwnvgeznGHyMfWXVeWu
         9vWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=TQdZx94zwgo28w++9jFPi9RrGnFyEcS0iP6h9V2qdLs=;
        b=x2PRQP4NPuBJmPKBErXG+AsC1mZ7tuSf2NNJfroOgSCX5kzs5EUz7ESr4WM8FWJKQI
         6P/nNzw1xOGbW4B9KTRd+xIZC7JicSOdNr3AX+6Gu3c9pps8aCEozLoPEby6ZYmR6+R4
         QIqGCmPcfboDHPTvRfXfJh2SiSeCUvvHbZtWX9RLuzmdKD0yJJ4uYUCVDPxK/O67KU5m
         qMOnIiNsIIbPlTiuM7YvaOIxOFqkX3PpGumR7Rpjrq+8ZKYAoCMlOTdY1raed6QzaP+w
         Mr0WB007mEiy5e45kLukv9bPFMLxBZkgDo6+y9sw2vm1mPP+ulkufbOAA8wHPpUWqCPZ
         4HmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id h12si82264lfv.4.2021.12.01.13.21.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Dec 2021 13:21:20 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236502701"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; 
   d="scan'208";a="236502701"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 13:21:17 -0800
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; 
   d="scan'208";a="602309136"
Received: from djiang5-mobl1.amr.corp.intel.com (HELO [10.212.64.69]) ([10.212.64.69])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 13:21:16 -0800
Message-ID: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
Date: Wed, 1 Dec 2021 14:21:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Content-Language: en-US
To: Thomas Gleixner <tglx@linutronix.de>, Jason Gunthorpe <jgg@nvidia.com>
Cc: Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason
 <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org,
 Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com> <87pmqg88xq.ffs@tglx>
 <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com> <87k0go8432.ffs@tglx>
From: Dave Jiang <dave.jiang@intel.com>
In-Reply-To: <87k0go8432.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
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


On 12/1/2021 1:25 PM, Thomas Gleixner wrote:
> On Wed, Dec 01 2021 at 11:47, Dave Jiang wrote:
>> On 12/1/2021 11:41 AM, Thomas Gleixner wrote:
>>>> Hi Thomas. This is actually the IDXD usage for a mediated device passed
>>>> to a guest kernel when we plumb the pass through of IMS to the guest
>>>> rather than doing previous implementation of having a MSIX vector on
>>>> guest backed by IMS.
>>> Which makes a lot of sense.
>>>
>>>> The control block for the mediated device is emulated and therefore an
>>>> emulated MSIX vector will be surfaced as vector 0. However the queues
>>>> will backed by IMS vectors. So we end up needing MSIX and IMS coexist
>>>> running on the guest kernel for the same device.
>>> Why? What's wrong with using straight MSI-X for all of them?
>> The hardware implementation does not have enough MSIX vectors for
>> guests. There are only 9 MSIX vectors total (8 for queues) and 2048 IMS
>> vectors. So if we are to do MSI-X for all of them, then we need to do
>> the IMS backed MSIX scheme rather than passthrough IMS to guests.
> Confused. Are you talking about passing a full IDXD device to the guest
> or about passing a carved out subdevice, aka. queue?

I'm talking about carving out a subdevice. I had the impression of you 
wanting IMS passed through for all variations. But it sounds like for a 
sub-device, you are ok with the implementation of MSIX backed by IMS?


>
> Thanks,
>
>          tglx
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/f4cc305b-a329-6d27-9fca-b74ebc9fa0c1%40intel.com.
