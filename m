Return-Path: <linux-ntb+bncBDAMN6NI5EERBFMYT2GQMGQE2YK2U2I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A546E46507D
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 15:52:07 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id v3-20020a63b643000000b003255b6cb43asf6891467pgt.6
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 06:52:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638370326; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hr8UTDIYjAEzPSf33GvrKk8xkvpgzNZQeFU8Asigu5ZiPAntjhlrYv07/kSkk36O9o
         8b4IBa4V6cEr3O9w/7OqAxEAtsWOmJS5cqEqpuq9xAPO2duOBZtP54lht1e+bV8St2wu
         EIX2GsY7ttKjhwQFfMSGwCSLNnjzJ8HoYL2PzPtECDOoYr0/3YErgaAyLHqKI3jf6J7e
         tf9CpLc2h4gLqv448QxDu39jwqqNdPFSikMrlD8DXFy0G9u8Wu3WBnzv2Fshdz9JIZtj
         lOwlV9L4Bvz3zBDOqC5h1bCN1RhTq4UnNwn/l+mU6smZyg5xGibqKtS+TBEeRhw3mILP
         KcQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=q2x4w0w//j5FJAHQIyraAimXq4HhhLI2isMVQohRws8=;
        b=I8skob5hituyE8NExtPNGprupKCBfPxtzChI+lQjOF9ZQ0r3+fIdR1oyAHaWCQdGGW
         TeNvrFHYJwsEAbQerYnNzSYPGbUwjBpywNGzY0O0Sw2kap3+eY7fms2lZ+SWIStwTITa
         y+8z7cEo/SLA8T9u8h1YdFtLhn5U8askbECOXSrSYKFiLH0uAf8+OPO/NO3E1OReorhl
         55DhJyRWGRDUp9v2Gr23hX23nGP2l9BGWp1Dy5I0dwCnr8RHo4126cmZSxmCffs+VhFA
         rLO+kd4ePyraLEyjN0lxJsOvH8DqyUqZuP9icx+JzXkwdS90iov/7nmkABjSMmxMZpWR
         9Zdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=GlbNwZ4D;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q2x4w0w//j5FJAHQIyraAimXq4HhhLI2isMVQohRws8=;
        b=d5IC6NIeakRr/Dp4NO120VIO38IC67eAJcj03l8nRQ+x4xx2NbIUe9BTrljcXQqSsA
         FS/9szmv6sWEdUIRNfITU8aBivujVQf05+14CaMWQeyTIvl/ezZVA+dSvO4uBGYHwFak
         RDa2FKXtPQrWvCBiB9uO6L8NkkQq0sNP8kBlYC9YfplOS5HAq9L+jP3xxRkjannAMFWz
         8Fk91B16Lx8abkCzP6oEit1on4ZhjPnYjPmX4qMPn3EfMqpmw9wvZclSuhjzvrzIIqZF
         sGNPNrqMNcQ0TmVrrfgZlRdnWRlpve9CNXn9rPck1l1Wxy/10xQ9IVLgK/2v9593s8f6
         oprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q2x4w0w//j5FJAHQIyraAimXq4HhhLI2isMVQohRws8=;
        b=BJQtnuI6VjQ8EHwtPD683JRySD5y1FUTFHehgfQA2uHMqosTJv/jKhoUbyucdcoyq4
         fJVq//7Y/RLZB7gX052egLopXG3Ft5K0N6tLkjD9HX4N3J5XbiVo+ODUFueLlOrAwjL7
         zjCs+Ur2wkHjIrb+qclVpkjoJ6BYT9QjT6HX4UEUpkKK+X9glALmK0QbssOePjYvkwDp
         9VTb/h/F3kwRL2NgX2T/OV/Lrw4Uo8CFpbTW+fiitt/54evfWVl/t12sVoQdMPvcGWEQ
         GesRxFuGZozBQ+sXk4O7bNuEShJHTWthnTelH4S1mBax5ATVnJuiGTj+nus9duJBJsvo
         S7fQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532xhGAvZvBbxkx2xvnxqmoKVANb9kTVzse0O4G9uh3fbcIXv+gY
	I/BMT1REI7jZ5nCfaFM9W1I=
X-Google-Smtp-Source: ABdhPJxxK+UrGvmuWqkZNDC4Vzse8KfREc8sa45TMLrRaSqn71QmN0pv+WqRDflD2a2pP1jk1jRhmg==
X-Received: by 2002:a17:90b:1a87:: with SMTP id ng7mr8232851pjb.230.1638370326041;
        Wed, 01 Dec 2021 06:52:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:194d:: with SMTP id 13ls726096pgz.5.gmail; Wed, 01 Dec
 2021 06:52:05 -0800 (PST)
X-Received: by 2002:aa7:9dcd:0:b0:494:658c:3943 with SMTP id g13-20020aa79dcd000000b00494658c3943mr6370215pfq.19.1638370325416;
        Wed, 01 Dec 2021 06:52:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638370325; cv=none;
        d=google.com; s=arc-20160816;
        b=pEXWCy62UYeD934ExjzwSq28Z0iSivAIiH0IBJtd1I3Lu+A/4B4xcM1K3oNr3HmYUb
         YeWHrGifesWfaxKNn0HvEQzwuI+YGRqc7dRHGYr63Vmq1Dr9N4E//nWbDTsRE6158o84
         JRHmfjUti2xJmZZfeRvNMlFlCiumMYP3a0+6sVkcYAnCeVm6tOn9q4ztgJTJE6jQdYQh
         kZhKM+qCY1UNTaiLEZvy3fYCbXRclphQVF4hWB8vim29CIRilfmZIvGMBPiA+rWhIfTs
         /+1YpSZoNoz8Fn9IS9lmrlvL0iq2Cr2LCJXubtyvcykvhmIGoZHhik0sYsutO/MQ20po
         D8IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=BTbSr5Tnue7aLzSgJJm9awkXjJzR21QR4KzXcy3eBrc=;
        b=TUuMROF5rFC5CrRj5Y7nqRTGkeDPmcFipjEMzjEGzlnDHk0gz5gM+zAipciwmQUJhD
         KxjI1VsLd9IEPOxxQgsAwsAA6t5ka9PzJw0cs6f2yLnXlfvfFo5Oc5SiRkeCwedyNI2q
         sTfIyfiijnWJuf2ak07TrToPZxsq9m5AkzUxG50tXCj5SaVGyk1Amu1wehG5H+tCJTw9
         wZZ/z1b0GArCIX8rQVA8dnEYznjiORp/9FL8L0x0LPqY7leGJpSBQLZn4MN7v1xqxD9I
         jJQy/K/CWuJiYwDa+LYGTcpSnlgMh1L1AnZemYsNPt0jmji+p8YhHKyCNkHhFIVhm8mA
         H0rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=GlbNwZ4D;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id q19si17845pfj.0.2021.12.01.06.52.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 06:52:05 -0800 (PST)
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
 x86@kernel.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
In-Reply-To: <87o861banv.ffs@tglx>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
Date: Wed, 01 Dec 2021 15:52:02 +0100
Message-ID: <871r2w9y3x.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=GlbNwZ4D;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Tue, Nov 30 2021 at 22:23, Thomas Gleixner wrote:
> On Tue, Nov 30 2021 at 16:28, Jason Gunthorpe wrote:
>
> The real problem is where to store the MSI descriptors because the PCI
> device has its own real PCI/MSI-X interrupts which means it still shares
> the storage space.

Bah. I confused myself by staring at the existing code instead of
looking at how this NTB stuff actually works.

So if I understand it correctly then the end result looks like this:

1) PCIe device (switchtec)

   The device has 4 MSI[X] interrupts: event, dma_rpc, message,
   doorbell. The event and dma_rpc interrupts are requested by the
   switchtec PCI driver itself.

2) Switchtec character device

   The switchtec PCI driver creates a character device which is exposed
   for device specific IOCTLs

   The device belongs to the switchtec_class device class.

3) Switchtec NTB device

   The ntb_hw_switchtec driver registers the switchtec_class class
   interface.

   So when #2 is registered with the driver core the switchtec class
   interface add_dev() function is invoked. That function creates a NTB
   device, requests the message and the doorbell interrupts which have
   been allocated by the underlying PCIe device driver (#1) and
   registers the NTB device with the NTB core.

4) The NTB core then tries to use the virtual MSI vectors which have
   been allocated by the switchtec driver in #1 and requires the msg
   write intercept to actually expose it to the peers.

So we really can go and create a MSI irqdomain and stick the pointer
into stdev->dev.irqdomain. The parent domain of this irqdomain is

     stdev->pdev.dev.irqdomain->parent

which is either the irq remapping domain or the vector domain. Which is
pretty much what I proposed as general facility for IMS/IDXD. I need to
go back and polish that up on top of the current pile.

Along with that have an irq chip implementation which exposes:

static struct irq_chip ntb_chip = {
	.name			= "ntb",
	.irq_ack		= irq_chip_ack_parent,
	.irq_write_msi_msg	= ntb_msi_write_msg,
#ifdef CONFIG_SMP
	.irq_set_affinity	= irq_chip_set_affinity_parent,
#endif
};

We just need some reasonable solution for the DMA/remap problem Jason
mentioned vs. msi_desc::dev, but that wants to be cleaned up in any
case for all the aliasing muck.

Thanks,

        tglx


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/871r2w9y3x.ffs%40tglx.
