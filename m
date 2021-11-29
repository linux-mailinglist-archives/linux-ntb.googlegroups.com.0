Return-Path: <linux-ntb+bncBDXYVT6AR4MRBNFSSWGQMGQEACFQIVI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA8C46267B
	for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 23:50:28 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id o18-20020a05600c511200b00332fa17a02esf11591740wms.5
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 14:50:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638226228; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rshyf2vRVr8OcHRJxHK5JzE4MrHtTYFrx8DZHSOdoMlMo27Mipud8v86XfgkK7f4Go
         8C9xwAQ7nkDQFa2CPh3CjxevbfsrwRCEKt2geq5rMXHO9TTvJPFv6VR/LGP9I2Df8e2x
         3ND6NbGdU/1iOSysUQHZHE5/Gz28cqk1RWWyi7FsvOYL8Sz6FzZrCpDdvzUSNPUAXuaA
         pqB8R0/8XHTZqN6M7c9xZRcAxr7kC1m37/urKymyttFQsfxn+ZmkhVpYx+/fYKBhlsYs
         LXMK+1s0KfrKBcno1cFCBw6//4Pw1cg7XtTp8nDgIg7CDF2vzC0UympdxwBbQCTCFcMP
         Qsdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=bkBxia9laA5fNRjXs7jPHM3Fj0L+vzbbHtJ4TADKA0o=;
        b=JfgUf1Dp2Hb6mvr3RdCzWbliewMCUfAtUXU5K9VsgzlE2GhZxVePV5QdrStuYyOOdw
         hOkbCwWdAwd+0gCkFg9Bl/2/CTXRpHQ9qztf4G6evRwScot9zED/rO0zrDThX3nrwspI
         3O8l56WFieBoilAnon+FX+JLsCvtD9wOyxUgOaWhvVhYqc2MTnfbMJQ10SEobSLq8+pU
         /ufrSwFGKSiFouFgMEAuy1eAzaA5qcbYi/n4RSFCkSFgxN4zEIjaaRYg/bKGzsfkr2j1
         Ia054SviR4mTWvZsQ8Y80bf9fBNsWD/LkRDLPLySaugIxTL8DF9dhAM9SRItXjgCo1yn
         LrTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bkBxia9laA5fNRjXs7jPHM3Fj0L+vzbbHtJ4TADKA0o=;
        b=sOShaZNBIZ/jIEKn9tI6QYajBUltahvv8tG39nRwG0A12hz4TcR0CWL0FEHmL/T8x0
         JiudRFZT+Ibyt7DyJ+/sFhoFZGOw9JRVW2OIfRtfOylBdffpe96G/I5KrL+5NF5m9Bf8
         LCerx1bVcz6SySUFzqiKknlIK8NjfUET5RU+sDx5OxCqYwMcFmGFzHPZpV2fBiJ7mRjL
         P7wxeYP/wq1Q7TwquqtPcLkP/VMvt9j2cd9k/3f7ZeYI27HrGuIKtlp5FcUFWmQjnFwf
         /iAz/C7jXQM1JD1mETp0hyUgnlXmIsCooUcH/KpR7ldCepD6CWSk1iifMEV0Qz2QXQ46
         A8VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bkBxia9laA5fNRjXs7jPHM3Fj0L+vzbbHtJ4TADKA0o=;
        b=Gk0kt+pt04zKYIQqY/OLv/ydZR+HhPFHNf/uq63ofa0/cKfH/Rm0UmECd8yiD/KoMp
         AcNzL8ECeH7nqMhZZ790gDMwyKrVck34Eqk4xS1aUsNXrnWqzia9g9aqSPb9V0VnUgBO
         A4ngyRad0VRZQXdGOcI84eZkX2h7OFi+n6ZYbxJt//JAk3HRy1s8tBnfpy11W41sAj42
         CAJcKBYWuXm3imswXT+rnmkcXHEL+rcSKneB0CeFuL5bVUeTN4ADLJcbxpPcKsJYeM8c
         rmD/yk56TYOdD2nzY9sTr38s7F9Id74/yQzum1k3f3//l++ntnuZX8FEb8bEDuVYwL60
         CDIg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532UYV6Q7ikMDDHqa86ULMTp8r/XYuMcome3VHeaZPgccUbDfsYt
	EMr8yUEEVe3rmxLkiuPQVvs=
X-Google-Smtp-Source: ABdhPJxIw+6vSgjDjldHtGqwHzkWAws1zZwFUgugHU5CSv9BHIfJwBnc3Qf6ap4pW9R6pXA9fJCmsA==
X-Received: by 2002:a5d:47c9:: with SMTP id o9mr37717415wrc.348.1638226228746;
        Mon, 29 Nov 2021 14:50:28 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls10502767wrr.0.gmail; Mon, 29
 Nov 2021 14:50:27 -0800 (PST)
X-Received: by 2002:adf:f206:: with SMTP id p6mr36928547wro.509.1638226227928;
        Mon, 29 Nov 2021 14:50:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638226227; cv=none;
        d=google.com; s=arc-20160816;
        b=cFwlxmTkVCRP1X/x+7wMELIAH9Klta482NkVe5cTJ9YNimmEzQ0NGmWN7Xf8objkVP
         io5me7E7BZ9D3ywkxWcuJAHkkS4RxytyEa8mFjji9Ja+a7aSuIKwESDK++9HV1czb/lR
         dJOsW00/Y2IhBKTiCJp008l1njLlvV+AydJhOrfYRJOoDSjX05dVyqold4wLJx2KK1XY
         5xzWlpuoa/06Q1MU2TvaIwj2OIsD6BxMjf5MOiSZl3x+xyj/bxChwWANGk4HeAa91jUQ
         8/n9PTwxa9UnRvIsAh1/4SQ/VdrlelTEn0ky0jDnJLC8KUsdL+EOCODtKV5yGIAMv33y
         RTQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=xDc51V/NLbF2HRrnRI3LW5qqYtH3l/L9lcC0Xt/V3x0=;
        b=q2v8dqyyFz/XN6SjOptfLZAuHlNe3TArvRkQ28dmKvylQH/dgg8nAb/D6awMoMxxlS
         2KZU7/IJMRYS6e+8hetFKN8C9g29ouULsWaKtlbC7H6QQqgetSJpflsV1Xv3aLXHymlL
         jq+jXJUiny7OPZoDVsUYuRiNWs99YjAB2kvlOuYFqNm7jR5hLAbOTcsBTxGt8ZwYzgCU
         KZxGQ3Wh3MnpPbqIIL2HCcYwLifU28gnf8Wx8okC4nEJJ8Lci+1XSpIWRIYrDuGvMJ7b
         322//5XkrZFD+CISHqmBk7QjLRN+2ikHFXigzo217WH1u9Y4OB/+Z61Ow83UMjPKU9Hx
         zqFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id z3si65907wmi.2.2021.11.29.14.50.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Nov 2021 14:50:27 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="296899400"
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; 
   d="scan'208";a="296899400"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Nov 2021 14:50:25 -0800
X-IronPort-AV: E=Sophos;i="5.87,273,1631602800"; 
   d="scan'208";a="540182749"
Received: from djiang5-mobl1.amr.corp.intel.com (HELO [10.209.175.223]) ([10.209.175.223])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 29 Nov 2021 14:50:24 -0800
Message-ID: <693a42d6-34d0-b8f9-f8b8-39ebbabb7f16@intel.com>
Date: Mon, 29 Nov 2021 15:50:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Content-Language: en-US
To: Logan Gunthorpe <logang@deltatee.com>,
 Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>, Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
From: Dave Jiang <dave.jiang@intel.com>
In-Reply-To: <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.31 as
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


On 11/29/2021 3:27 PM, Logan Gunthorpe wrote:
>
> On 2021-11-29 1:51 p.m., Thomas Gleixner wrote:
>> Logan,
>>
>> On Mon, Nov 29 2021 at 11:21, Logan Gunthorpe wrote:
>>> On 2021-11-26 6:23 p.m., Thomas Gleixner wrote:
>>>> Replace the about to vanish iterators, make use of the filtering and take
>>>> the descriptor lock around the iteration.
>>> This patch looks good to me:
>>>
>>> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
>> thanks for having a look at this. While I have your attention, I have a
>> question related to NTB.
>>
>> The switchtec driver is the only one which uses PCI_IRQ_VIRTUAL in order
>> to allocate non-hardware backed MSI-X descriptors.
>>
>> AFAIU these descriptors are not MSI-X descriptors in the regular sense
>> of PCI/MSI-X. They are allocated via the PCI/MSI mechanism but their
>> usage is somewhere in NTB which has nothing to do with the way how the
>> real MSI-X interrupts of a device work which explains why we have those
>> pci.msi_attrib.is_virtual checks all over the place.
>>
>> I assume that there are other variants feeding into NTB which can handle
>> that without this PCI_IRQ_VIRTUAL quirk, but TBH, I got completely lost
>> in that code.
>>
>> Could you please shed some light on the larger picture of this?
> Yes, of course. I'll try to explain:
>
> The NTB code here is trying to create an MSI interrupt that is not
> triggered by the PCI device itself but from a peer behind the
> Non-Transparent Bridge (or, more carefully: from the CPU's perspective
> the interrupt will come from the PCI device, but nothing in the PCI
> device's firmware or hardware will have triggered the interrupt).
>
> In most cases, the NTB code needs more interrupts than the hardware
> actually provides for in its MSI-X table. That's what PCI_IRQ_VIRTUAL is
> for: it allows the driver to request more interrupts than the hardware
> advertises (ie. pci_msix_vec_count()). These extra interrupts are
> created, but get flagged with msi_attrib.is_virtual which ensures
> functions that program the MSI-X table don't try to write past the end
> of the hardware's table.
>
> The NTB code in drivers/ntb/msi.c uses these virtual MSI-X interrupts.
> (Or rather it can use any interrupt: it doesn't care whether its virtual
> or not, it would be fine if it is just a spare interrupt in hardware,
> but in practice, it will usually be a virtual one). The code uses these
> interrupts by setting up a memory window in the bridge to cover the MMIO
> addresses of MSI-X interrupts. It communicates the offsets of the
> interrupts (and the MSI message data) to the peer so that the peer can
> trigger the interrupt simply by writing the message data to its side of
> the memory window. (In the code: ntbm_msi_request_threaded_irq() is
> called to request and interrupt which fills in the ntb_msi_desc with the
> offset and data, which is transferred to the peer which would then use
> ntb_msi_peer_trigger() to trigger the interrupt.)
>
> Existing NTB hardware does already have what's called a doorbell which
> provides the same functionally as the above technique. However, existing
> hardware implementations of doorbells have significant latency and thus
> slow down performance substantially. Implementing the MSI interrupts as
> described above increased the performance of ntb_transport by more than
> three times[1].
>
> There aren't really other "variants". In theory, IDT hardware would also
> require the same quirk but the drivers in the tree aren't quite up to
> snuff and don't even support ntb_transport (so nobody has added
> support). Intel and AMD drivers could probably do this as well (provided
> they have extra memory windows) but I don't know that anyone has tried.

The Intel driver used to do something similar to bypass the doorbell 
hardware errata for pre Skylake Xeon hardware that wasn't upstream. I'd 
like to get this working for the performance reasons you mentioned. I 
just really need to find some time to test this with the second memory 
window Intel NTB has.


>
> Let me know if anything is still unclear or you have further questions.
> You can also read the last posting of the patch series[2] if you'd like
> more information.
>
> Logan
>
> [1] 2b0569b3b7e6 ("NTB: Add MSI interrupt support to ntb_transport")
> [2]
> https://lore.kernel.org/all/20190523223100.5526-1-logang@deltatee.com/T/#u
>
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/693a42d6-34d0-b8f9-f8b8-39ebbabb7f16%40intel.com.
