Return-Path: <linux-ntb+bncBDAMN6NI5EERB3GPZGGQMGQEX5KSUMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AD046F4F6
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 21:32:45 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id l6-20020a05600c4f0600b0033321934a39sf2829785wmq.9
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 12:32:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639081965; cv=pass;
        d=google.com; s=arc-20160816;
        b=JqOsE3v3WhArdggF4+UYadiTKMlEYbsdRvm6+iB+aJHYG5Wj5cnDDXbuiGGFErgS0R
         OM1XNhJo5WyK/kMPYATSOAhXfuNgeYpPHvQraFtRpKPFRaLeJEUqOsOao3nUB0VU8RaB
         Eg+nhgeR+BcSpTrxx/kgHy/AEQ85rEA3Js8XtNLghnnI2b90CQT+XI1I3Bb01Zanr6aS
         mbXjxSFeVCXIok93nttLOeR/VWtIgCX3EGkLVsgys7MWlgVx6U1++NvZP/2Xj/uN23vK
         Tf+Z4WBuaajyKUnP3b/MWUWrVjoCrZMjcDvWbA/203uYIoeH/2zwVi6NHfMR6tSNMxmG
         l3GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=f7HY8URq+Uf1n2NGpf8J3PLjmB1EOD3aAybRnRDRq00=;
        b=EXKAyPQQJUGBjC/b9VpGORTmUSwo2snt0qysMlM7Lm1nQAM3Z/Sf5pDDk3Kn6mjnzr
         yN/KQH84Q3f9llT/BMd9dYHbXplCGLGGLLpd/qWgwvGcpKHhwpi0XJmtx4/Vx3xZerTV
         Zelb2afRW41YbUqGas0OKf2cHVxzV/lH/3ZCZLF7FC/Nv1E2xqkCos03Up9LnW/n9AQP
         IgEKK/Nl+Jk1B32b/ioOHq+TL6idqthLMUB2PDK6vMHIXCmMrrIC56RzuM++solLCjhv
         HRd29RK6LAVEUwlI9EfjfJcFpsvheJx77W3jwBr/0b+uxtVxHfYCdHeBfw0BIC/vxpCA
         WaBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=PMlHc47j;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f7HY8URq+Uf1n2NGpf8J3PLjmB1EOD3aAybRnRDRq00=;
        b=SfVnB4GErODoPsu3WB7CkNvkKaeBGLjdnQaK4RfItGTTs3R1M4YeqctAPWnGQyEWES
         ZoQJPWav+I+OMi+3LaHFxW4tTwZGBIT4QWhUWkxVSMzI1gIXIWipU2jJeke4aWbHWwK3
         xOL+cObFlf1uHjLE/YyGtssDqkyx+nR8PNixczQiydN4Zd5vL1GClNSeg7d+5RkzSi6q
         EefTLP6BbA8PIfLKX/Qv5PWL470AzMFUMDFWfNOkm1y4TJH2AOYvCe4FYZveOzc3i6ow
         KavxyqDub3cCd382YqU1g0uM31m6Eg7mW0qyKuBSMuU9V48s4RPsz5lO7s4RJ9FsCnDs
         axsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f7HY8URq+Uf1n2NGpf8J3PLjmB1EOD3aAybRnRDRq00=;
        b=EyenH6IDg+OwF4Lv/1lgmtqb23ChldBatwcPU10Idpv6inmkt1V/DK8ZxuO0mBRj7l
         /p6TQdFBVvFw6Wxk1hMcsjnSIyuKvTVGodLZxFCcoUxnfl5IIH39oX/H5t/FMuaPNv6k
         C6BOt9F67S3oigNgymF4xsuEI50yOe3gFAwK/6Ey4N6n/QTXbviDQNhGgESQTy5KtLwA
         gZNA3wdNgeg4NH9AmezdTch1weqJf6leWFISDlln0TgTykBlVG1ttos5f66oZVp40Ae/
         7ApcgjwdOy8ZqXWwGWfqj9ek+TaYNVghnFlCJJQE3zwagCzG0sMSkp+Z/Lqy3ONBvv2T
         p2vg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531f29RvLilj3xCJ+l4QRg+0ih/B5RejkJk7rcRpO2Gn8gy+Hg6C
	h7FzkiK/l18I4roHO4kuYos=
X-Google-Smtp-Source: ABdhPJzkuLg0bKt4F8q7GP9NgRj+POc8AJk/DqMgM+67tw7BGeDifwe9cnsAVtB2zpBxgggDcZMuKg==
X-Received: by 2002:adf:db11:: with SMTP id s17mr9054776wri.573.1639081964903;
        Thu, 09 Dec 2021 12:32:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:9d85:: with SMTP id g127ls392909wme.1.experimental-gmail;
 Thu, 09 Dec 2021 12:32:44 -0800 (PST)
X-Received: by 2002:a05:600c:378b:: with SMTP id o11mr10363136wmr.157.1639081963987;
        Thu, 09 Dec 2021 12:32:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639081963; cv=none;
        d=google.com; s=arc-20160816;
        b=sOC1kwiePyUOCm+fh2Avbz5axGgyQ8x1hSoUgxmsLWfc1VgD92yfEjirek+RnfrQQq
         zLGrloTCVztC90S370iVIInG5GDZrfLjf+8KNvOJ9sNWMj4BYkv1n3vUEo1q+dWzokoG
         TfT2gIQUnnOx6M+2RcupchjtTjEarac1uSqklLSpBvJdb93u38ZyPkK9lKTFdCqY1EWc
         G2/cJ4Q6wnJ7NI/bf3udserPECiKy5ek+VUfDprEbob737wIQAGmTgjz0OWp/qpmdxsf
         nDE+VySQEKjFfdW0UnPn3YqAkoDAPPjyNiyI8wn0Ap75fnhSDGUfsFKgBh9Bi9nMgfBq
         +M4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=d2Zx4DzHcJuKFVR6I6pM84QqZd+nRGuDXek8rfRkIMk=;
        b=ET/lDMMp6H7WSRNAmsK1j69EPZN0Pbb5rjEJ3yAdCCuB/AmOOTeAaJaKw8Es67LddU
         1ni+JLGpT9tISg2zLtEtMMBkJpgaui3JZug3vkQHdAv8/iit9coQrXvUSj6O0wBXBm7k
         4rfBKAc1wmdqFczI1f5q9AYEn20Pm9x1YUL0Ejjo+B55p0H+oZhKJwulzSe/BKXzF+ga
         MBuyZa3s6SEFqdajw1P2DRCrX6XDk3hAVO4u4ChAq/KnqQdluVbHWztoOCYARx2ziDK5
         c05LHXuLMMNfV5DmAt1McI1oRjx7XaA/bI/APT7+0w84CyVm1n5J3/OaALTlOWVH35Ln
         fVEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=PMlHc47j;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id r6si48594wrj.2.2021.12.09.12.32.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Dec 2021 12:32:43 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: "Tian, Kevin" <kevin.tian@intel.com>, "Jiang, Dave"
 <dave.jiang@intel.com>, Logan Gunthorpe <logang@deltatee.com>, LKML
 <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Marc
 Zygnier <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
 "Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>,
 Allen Hubbe <allenbh@gmail.com>, "linux-ntb@googlegroups.com"
 <linux-ntb@googlegroups.com>, "linux-s390@vger.kernel.org"
 <linux-s390@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, "x86@kernel.org"
 <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <20211209162129.GS6385@nvidia.com>
References: <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com> <87pmqg88xq.ffs@tglx>
 <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com> <87k0go8432.ffs@tglx>
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com> <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
Date: Thu, 09 Dec 2021 21:32:42 +0100
Message-ID: <878rwtzfh1.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=PMlHc47j;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On Thu, Dec 09 2021 at 12:21, Jason Gunthorpe wrote:
> On Thu, Dec 09, 2021 at 09:37:06AM +0100, Thomas Gleixner wrote:
> If we keep the MSI emulation in the hypervisor then MSI != IMS.  The
> MSI code needs to write a addr/data pair compatible with the emulation
> and the IMS code needs to write an addr/data pair from the
> hypercall. Seems like this scenario is best avoided!
>
> From this perspective I haven't connected how virtual interrupt
> remapping helps in the guest? Is this a way to provide the hypercall
> I'm imagining above?

That was my thought to avoid having different mechanisms.

The address/data pair is computed in two places:

  1) Activation of an interrupt
  2) Affinity setting on an interrupt

Both configure the IRTE when interrupt remapping is in place.

In both cases a vector is allocated in the vector domain and based on
the resulting target APIC / vector number pair the IRTE is
(re)configured.

So putting the hypercall into the vIRTE update is the obvious
place. Both activation and affinity setting can fail and propagate an
error code down to the originating caller.

Hmm?

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/878rwtzfh1.ffs%40tglx.
