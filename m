Return-Path: <linux-ntb+bncBDK2ZV75TIORBFV73PTQKGQEZCSQOAA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 74404351B4
	for <lists+linux-ntb@lfdr.de>; Tue,  4 Jun 2019 23:16:07 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id q12sf2504411ljc.4
        for <lists+linux-ntb@lfdr.de>; Tue, 04 Jun 2019 14:16:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1559682967; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGjcPLopNk4fch46BBQwA3jF3/G8sjWiIifX24vKmx1TlNDvJ6wcv9wzpKaFhj/lyK
         OJ8CQa7+aICEIT3X3IEM36CPaG4Wd05ndrdEHveqCCF0dlRd4stnRCR6spDi7gtzOW2y
         SaqDEyI9MkPlR4U443xuKF3vpTpX8QF1dqTFTngckIxheeVG6fw5slec1dUSw6hUEEwS
         hIHhrGhodVkWwqyB784fMecapQVmHbp9WJlazEmUqQJ2NidX3tkhZ4xuK+yvPo5pNrve
         w0kNpbT+DrBycMht4CCMbSvmiZpMD8O3hngWJ4iUuVtR15B2DeaRYUIsgFPZVmbXQ8Qc
         lzyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cklbNOrV+ME1hPgXXL8Qx4miQRVeytUTnOik4+2MHqE=;
        b=fUVQPfSG7+TKr/QDOc3mxoUC0DVtKc03ttavYMJtpBOb5QsuYYDxdJjGIBjbcvd1lt
         4jX2Drywcui96e9jCNlZNE9YZuRwmKwI+oFPXuv5ACea2Yxkhg2IMh1/nhfpNKFDug16
         obFDi5+Kdi00xZ3SZOAv/m6KloU40wJaEHy5KrK4WAP67DhRWC46YEFVd5I77uplNtP1
         Jerr6EFH0cRYQWU4agSKdJlOR93McRXftNqGHPBkVxQyrWJxNvisSkwtY+iJ05jLgNPY
         NilHaCQe4rgQba8Z5Dn3VjphHtl8z1bAgqU8AZBy1dG9Rjcxk9U4VoPc8c5ShC51v67F
         3oIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623 header.b=DB1f081X;
       spf=neutral (google.com: 2a00:1450:4864:20::336 is neither permitted nor denied by best guess record for domain of epilmore@gigaio.com) smtp.mailfrom=epilmore@gigaio.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cklbNOrV+ME1hPgXXL8Qx4miQRVeytUTnOik4+2MHqE=;
        b=oOYBIjrdVs/DVQrN2Xh11Z22984CvQe48KfRNhWIQ/fBtDi8FFg/Jv0dz9V/0NWNTt
         P5mAu8cdhocLp7QVU7tAQtE6JB7MKL7QThFzJoBwr68UL8YQbZla015Grsi15p3gR+PN
         ZolF0iDZwnoSqnbbOMdM14/BgIQ45xJiyq9SVlAqT+tI2dKyPm1o3xzKjkSsSRu3v0Ev
         wRcKKeJ4MnKyGqZD9qw+CNS1SdyNCK0WsZ5UNvi+O3Yfkx+9IOagU8ylit6otT7HMkm5
         Mq5kGorcIAm0kb78PifpmRwk8Zjwpu2lelNC1dTXJ8R80rPA3S2jEYxDYKlURw/hFAv9
         VewA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cklbNOrV+ME1hPgXXL8Qx4miQRVeytUTnOik4+2MHqE=;
        b=Uk08h3Shf6hZI3BLYFiaBU+lPMBvbtDVKgoSzyCTeBdKi1Y6aC/Gc6M9rToNNRfhUn
         Bqkn+QYxsejBQTLrdXmzVlvkVmXBZ/+w1uEifv+HaJzx5446Ok4YJ6Vi8jCZ57veMOuX
         Mrz3dezeli5zAwvNQDjvlhW7vD2o5mARuGihHh21BdgRK1ZTlLq2hb8ftdr7TpRbWh0n
         AXPr1DQ4rllw9wG1UQktJssM7m0gtEWkwq7HKciN03/ZfqQlge8w6jLa+OiegtKs2FYb
         UH5UFDVSDhSXX5JxWxt9cIR/0u46GSy60zn+CkYN6QB1hX2xvD0805Qghqbpfrpb5QE2
         8fgw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWqNeviNxRBTHhfk3mywEVmO9oA587hKTnUlTaS/DpbEJufMhn4
	3EtT5ayMxg8FFh4GDQ7Ocg4=
X-Google-Smtp-Source: APXvYqzgjDTYXJLHTq3jc9AmEUiwdYZncSuA8GsTXFBpgZj04fesbRmqogIbn3WYsb04J2e9gYzEew==
X-Received: by 2002:a2e:6348:: with SMTP id x69mr6082405ljb.186.1559682966958;
        Tue, 04 Jun 2019 14:16:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:92c8:: with SMTP id k8ls14760ljh.7.gmail; Tue, 04 Jun
 2019 14:16:06 -0700 (PDT)
X-Received: by 2002:a2e:3101:: with SMTP id x1mr18354695ljx.148.1559682966410;
        Tue, 04 Jun 2019 14:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1559682966; cv=none;
        d=google.com; s=arc-20160816;
        b=k16BWpo1ZgyWuvsfbQcIx99qjVItNDeFXExkCZ5PET624w489aVb7gL0sySjDhxPDo
         xIYqZe63YyT31lN5RxKvGRTsOUtWArALFqCqfRYjwjxYNBvgrZHOJev3mnvy9JD2KJ1S
         tpND5jriuNzrkkhHTukmevkBWsNTtZaQMvbOpdmByYzQZJVm0zAPKUImr8dwETs30xEZ
         uZz6Z0ZOhCmfSlq86GSv3xKxWJXjb+vUwF+qIWl4cI+7/fncKP8TnLS3w8IdwCbIRhc7
         mayEyS+dpxUCplq6p/y/fh9iDEdaTXY/XmZq0axv05RkxusZrSZy5zbxtP//s3oFJ+ot
         r29Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/LhLSypOW9eEI9FrLebgFNQ023mgsanhRlBmqRqaKH8=;
        b=xQNcUxpoSsBvoHwfbH1ZOR7CH/Ypq4EWxm5Mggnpe6epF3/3XJn8eyS5uaMlAv/QXl
         pCwfyBmx+wGBDlioVdl/bSi5T+rpoo6BcRuu6EidX9UwZS5ohWMSLLUTbMEMNrGvQCZI
         uGnTFV9fIIfAO3lIlPne8LXAaWQajDwCTuj/eyVNB0TT/ddUZj8oclwSAGk90AAgrKGI
         TDNQ52oK++oohViK5ZPhW9tztYPnjlejUJJkrXsAbi3x+9fbG4avf6WKdNpyA6dhHSpq
         O8xg9qh/pDcHhRVVdxb/Lj1ONyuRxsJjXFuTNOCmrxsIq1AEYRLIN8/ooYORll+JU+I0
         kecQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623 header.b=DB1f081X;
       spf=neutral (google.com: 2a00:1450:4864:20::336 is neither permitted nor denied by best guess record for domain of epilmore@gigaio.com) smtp.mailfrom=epilmore@gigaio.com
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id n20si264198ljg.0.2019.06.04.14.16.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jun 2019 14:16:06 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::336 is neither permitted nor denied by best guess record for domain of epilmore@gigaio.com) client-ip=2a00:1450:4864:20::336;
Received: by mail-wm1-x336.google.com with SMTP id v19so170331wmj.5
        for <linux-ntb@googlegroups.com>; Tue, 04 Jun 2019 14:16:06 -0700 (PDT)
X-Received: by 2002:a1c:40c6:: with SMTP id n189mr19170911wma.118.1559682965882;
 Tue, 04 Jun 2019 14:16:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAOQPn8sX2G-Db-ZiFpP2SMKbkQnPyk63UZijAY0we+DoZsmDtQ@mail.gmail.com>
 <CAADLhr49ke_3s25gW11qZ+H-Jjje-E00WMHiMDbKU=mcCQtb3g@mail.gmail.com>
 <cdcd00e9-056b-3364-cfbc-5bcb5bcff91e@amd.com> <CAOQPn8sQ+B97UptHpxJgdmcMxBZrqGynQR8qTc3q77fAODRH-A@mail.gmail.com>
 <8e4ccf44-9e4f-8007-ddcc-431440f9d533@amd.com>
In-Reply-To: <8e4ccf44-9e4f-8007-ddcc-431440f9d533@amd.com>
From: Eric Pilmore <epilmore@gigaio.com>
Date: Tue, 4 Jun 2019 14:15:54 -0700
Message-ID: <CAOQPn8vE4SbDBt_fu3YsqysHspjZ9rumsDHT9RQe+ZT7HUfKCQ@mail.gmail.com>
Subject: Re: Fwd: AMD IO_PAGE_FAULT w/NTB on Write ops?
To: Gary R Hook <ghook@amd.com>
Cc: "Mehta, Sanju" <Sanju.Mehta@amd.com>, S Taylor <staylor@gigaio.com>, D Meyer <dmeyer@gigaio.com>, 
	linux-ntb <linux-ntb@googlegroups.com>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: epilmore@gigaio.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623
 header.b=DB1f081X;       spf=neutral (google.com: 2a00:1450:4864:20::336 is
 neither permitted nor denied by best guess record for domain of
 epilmore@gigaio.com) smtp.mailfrom=epilmore@gigaio.com
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

On Thu, May 9, 2019 at 1:03 PM Gary R Hook <ghook@amd.com> wrote:
>
> On 4/24/19 5:04 PM, Eric Pilmore wrote:
> >
> > Thanks the for the response.  We are using the correct device for the
> > dma_alloc_coherent(). Upon further investigation what we are finding
> > is that apparently the AMD IOMMU support can only manage one alias, as
> > opposed to Intel IOMMU support which can support multiple. Not clear
> > at this time if it's a software limitation in the AMD IOMMU kernel
> > support or an imposed limitation of the hardware. Still investigating.
>
> Please define 'alias'?

Hi Gary,

I appreciate the response. Sorry for the late reply. Got sidetracked
with other stuff.

I will try to answer this as best I can. Sorry if my terminology might
be off as I'm still a relative newbie with some of this.

The "alias" is basically another BDF (or ProxyID) that wants to be
associated with the same IOMMU resources as some primary BDF.
Reference <drivers/pci/quirks.c>. In the scenario that we have we are
utilizing NTB and through this bridge will come requests (TLPs) that
will not necessarily have the ReqID as the BDF of the switch device
that contains this bridge. Instead, the ReqID will be a "translated"
(Proxy) BDF of sourcing devices on the other side of the
Non-Transparent Bridge. In our case our NTB is a Switchtec device and
the quirk quirk_switchtec_ntb_dma_alias() is used as a means of
associating these aliases (aka ProxyID or Translated ReqID) with the
NT endpoint in the local host. On Xeon platforms, the framework
supports allowing multiple aliases to be defined for a particular
IOMMU and everything works great. However, with the AMD cpu, it
appears the IOMMU framework is only accepting just one alias. Note
Logan's earlier response @ Mon, Apr 22, 10:31 AM. In our case the one
that is accepted is via the path for a processor Read, but Processor
Writes go through a slightly different path resulting in a different
ReqID. As Logan points out it seems since the AMD IOMMU code is only
accepting one alias, the Write ReqID looks foreign and thus results in
the IOMMU faults.

>
> The IO_PAGE_FAULT error is described on page 142 of the AMD IOMMU spec,
> document #48882. Easily found via a search.
>
> The flags value of 0x0070 translates to PE, RW, PR. The page was
> present, the transaction was a write, and the peripheral didn't have
> permission. That implies that mapping hadn't been done.
>
> Not being sure how that device presents, or what you're doing with IVHD
> info, I can't comment further. I can say that the AMD IOMMU provides for
> a single exclusion range, but as many unity ranges as you wish.

I'm currently not doing anything with IVHD. The devices on the other
side of the NTB that need to be aliased can be anything from a remote
Host processor, NVMe drive, GPU, etc., anything that wants to send a
memory transaction to the local host.

If you have any insight into how the AMD IOMMU support in the kernel
could be extended for multiple aliases, or whether there is a hardware
limitation that restricts it to just one, that would be greatly
appreciated.

Thanks,
Eric




-- 
Eric Pilmore
epilmore@gigaio.com
http://gigaio.com
Phone: (858) 775 2514

This e-mail message is intended only for the individual(s) to whom
it is addressed and may contain information that is privileged,
confidential, proprietary, or otherwise exempt from disclosure under
applicable law. If you believe you have received this message in
error, please advise the sender by return e-mail and delete it from
your mailbox.
Thank you.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOQPn8vE4SbDBt_fu3YsqysHspjZ9rumsDHT9RQe%2BZT7HUfKCQ%40mail.gmail.com.
For more options, visit https://groups.google.com/d/optout.
