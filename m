Return-Path: <linux-ntb+bncBDXYVT6AR4MRB77ZT6GQMGQETM5VAII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A91446598F
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 23:53:52 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id o4-20020adfca04000000b0018f07ad171asf4583496wrh.20
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 14:53:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638399231; cv=pass;
        d=google.com; s=arc-20160816;
        b=AkLkrZvVTMa0fspgosMsnlanQs6Jl4vf5CAZj1i01WBKXjt7Q354SdrXg4X8isiqEo
         eyqqC76NOjhrBJPYfRujeQE+JZop3096pV1vxrKLsXHliFHDa52o7KGq/ljMHddU6rEm
         0p3xvsMTh8/9tm7VTSr16NEI6JHDZNgCpmUfW0TUjvplttnk7cS3EVORNGrksUlcwZY2
         zrECnDIW5YLT0P6ianH3zVVcFId31NpzixvO0pIMZzHWcoc/zkCAjRK7zHPO/2uPaXFv
         3LkzKUc7WzO8O9OUkQsZnE+Z+NLnkki/1S2ZafiqZ36T0hBi2kgi59dHt/bBRiQM33xg
         gIZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=f6X30+hCMCyBIom8u7W/Mn7D9USwLitzNJZu+8IcA+I=;
        b=SqRIkT/ankSlmoxYSadpAVxqhPe76zVgSfulQn5J3Coyjr3txGYVCW8EhB8i9aDxKs
         /NEw6K99WJnRHmKpJaMnZ1BBbPQBegDYxVQyrO/1L8amUbne5CTXUO2HwejXSsUBg3PW
         wXsEEV5SL5YEN4JrVZMSWrIeCaChSMr8NHga1kChNweT9jRLwWV5kLiEePtGe3K5y7y2
         Birtq8OaLRhLd8WEvbiZ8voO9zAy25dvmyGRTJGd3uwLkWtCntm2rCiT2nBe5V+sjGNN
         DOCcACC8QxYyYEMBzsQmUgG1/RJupNgJwGDbidiVcdRL3R0XZht1Ilw9+GaAoTmmyfme
         Lpqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f6X30+hCMCyBIom8u7W/Mn7D9USwLitzNJZu+8IcA+I=;
        b=H08OFet18jvNWoxUc1W7ZNAJwUVNGMbKzqkmPVEAL1L65hSBWEui1BvoQhrJjf777F
         EBV25KnmwzQnJFOxaL4NLnLiEmt3QefFDFNMr3kgyknoKX4pJuv4Stn1gD2wqiw7eM3F
         Qij6RSXOs+hWvwav7s88xT6FJWcDMDx14gGh0yJUMCaRCXackhFZt0IWLKQgyy2wyfKI
         g5KC4GolCSz+jXgNyWo6erXHSFcybsK9mpkm6TRs+dmkHER01dcJ3g9TrXhzS8Mzv2pS
         PV9TfDDSXNLsieBQvwwWznc0kBfy/j+GW4DBz90lm58M6YNbc0b/VZqnWed6u4Fg8sPT
         osNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=f6X30+hCMCyBIom8u7W/Mn7D9USwLitzNJZu+8IcA+I=;
        b=P/QmJNs3Z+vb1SRwFsRRyh/FADkmBTM0n232OrQxKr9oLGIcpoV0JRFYmSXmrMJej1
         bS7Pet8ob4rwqHRwubILz6mbwfaHGlpopzWrQE1yiAoMKZm+KMe6h51abEsmoi0XMWun
         xRw3N9S1wvDHnCUZ9JD8rxhRVS0HUgltJPrdBLxGZYV09BTti7pFIOFTQbDjSr1WNtMc
         FZi4yJo6b2IDivDzCmuWvZ/1s+UwgWPJg6t1YJaVDIY5rnI4TV9OG1Q7hTzSavAzTWn2
         ZnJKSLqfjrkNhY/V53pW73xjhlPMUTGXme28h9eMbuc0RrqxnWc0onGu6EKugrtXVEgZ
         YZPw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531w2zZVkO4QDKieyGMMX/ZjxoGh0QHQhGPZmiUOXZlNXGsfKc6S
	Tr7MxZ4p/mPt7rN1zTksC+g=
X-Google-Smtp-Source: ABdhPJwIzOJc4c0Q4btfDY4yiMM4xPzMC8JRTjYn2ZJ+7V4WXJGFNHW3+tb0zfgHmmsxw9O1XX4l/w==
X-Received: by 2002:a5d:4ece:: with SMTP id s14mr10379370wrv.371.1638399231825;
        Wed, 01 Dec 2021 14:53:51 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:80c3:: with SMTP id b186ls1888678wmd.2.gmail; Wed, 01
 Dec 2021 14:53:50 -0800 (PST)
X-Received: by 2002:a05:600c:22d9:: with SMTP id 25mr1378562wmg.71.1638399230763;
        Wed, 01 Dec 2021 14:53:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638399230; cv=none;
        d=google.com; s=arc-20160816;
        b=LX9cHvaCTiOZvTjsFBZpRuLkd++wS0NRyNmdjbKvkZL1b55a7YbgMtdTJUrcHVfP2b
         dIZjeOPaRsaHHEbWaPSeKUwaF28fPwh+yqaYK251rWF0Y1optjtUrgmrhxq4JmAP9kSZ
         be50ApUHSGVYmkiEvIjcmTHBzq9KxIdse+LBjacZpw9uCrjW59YTeWZT0963hzAjvuDk
         ukjmRKFtYSDZk4PzPxSA7L4CjipdBEzmL02N6rkFzwNRwA9eYCLGCdp0c+yLaA5ODck8
         ZEPcnzSEr+MXVW52QgeCS+jrTgkLY7trwRTQickYg8EP+CHSNRMS7z7U/qk7Zld2fS+h
         0SMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=Acv490Qy0Qx51sou7/fJ6SXICfFO3kpbKgx4G/FDYrc=;
        b=MbDEDo5jHVf7fjVVeuFJS+zKegGGyp5eBLO/rDYLu4TyNCMQMuJI3m1CZrPw67MmgJ
         kePqhUntmWvLHinuugdTRqdAnQhAWU23/GFH6aR3AkiOUV32dGVbf4Z6CciYP0VuEHPW
         mZhhJNfR/Q8VocTGxbiwCETxBB+wR0pZLDYzQVr518l8bg/xxnlIgRmTrE2bMlFeRvq1
         CMu98t/bNHraWbILjNaaeQ0HJIzSvyjlkBtFazxQecI6OeyDtDEm7OMDBLyMH1RTDg25
         o8RqIpfyX+2NNQdsMUHeH9LxSyzRyWGcDD8HNT164ACQxCaKx1p9lNmOV6uxCh1WT5/S
         I+cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id r6si71499wrj.2.2021.12.01.14.53.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Dec 2021 14:53:50 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="216590490"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; 
   d="scan'208";a="216590490"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 14:53:48 -0800
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; 
   d="scan'208";a="602370697"
Received: from djiang5-mobl1.amr.corp.intel.com (HELO [10.212.64.69]) ([10.212.64.69])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2021 14:53:47 -0800
Message-ID: <0eab4c0e-c672-1138-2d95-3c9bee9ecdb1@intel.com>
Date: Wed, 1 Dec 2021 15:53:46 -0700
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
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com> <878rx480fk.ffs@tglx>
 <45302c9d-f7a0-5a47-d0be-127d0dea45fb@intel.com> <875ys87zl5.ffs@tglx>
From: Dave Jiang <dave.jiang@intel.com>
In-Reply-To: <875ys87zl5.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 192.55.52.136 as
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


On 12/1/2021 3:03 PM, Thomas Gleixner wrote:
> On Wed, Dec 01 2021 at 14:49, Dave Jiang wrote:
>> On 12/1/2021 2:44 PM, Thomas Gleixner wrote:
>>> How that is backed on the host does not really matter. You can expose
>>> MSI-X to the guest with a INTx backing as well.
>>>
>>> I'm still failing to see the connection between the 9 MSIX vectors and
>>> the 2048 IMS vectors which I assume that this is the limitation of the
>>> physical device, right?
>> I think I was confused with what you were asking and was thinking you
>> are saying why can't we just have MSIX on guest backed by the MSIX on
>> the physical device and thought there would not be enough vectors to
>> service the many guests. I think I understand what your position is now
>> with the clarification above.
> This still depends on how this overall discussion about representation
> of all of this stuff is resolved.
>
>>> What needs a subdevice to expose?
> Can you answer that too please?

Sorry. So initial version of the IDXD sub-device is represented with a 
single queue. It needs a command irq (emulated) and a completion irq 
that is backed by a device vector (currently IMS).


>
> Thanks,
>
>          tglx

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/0eab4c0e-c672-1138-2d95-3c9bee9ecdb1%40intel.com.
