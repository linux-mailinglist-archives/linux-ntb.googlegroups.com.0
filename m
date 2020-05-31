Return-Path: <linux-ntb+bncBCS4BDN7YUCRBBEX2D3AKGQEYOEK5MQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EAB1E9A43
	for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 21:54:45 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id f15sf3735806pgg.5
        for <lists+linux-ntb@lfdr.de>; Sun, 31 May 2020 12:54:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590954884; cv=pass;
        d=google.com; s=arc-20160816;
        b=moK91UL3bmBGtT4s1wwcr/ZU+bvLH5+C4/zvTvzqM6tEbioqj40KEnTfvfLd1/b2PU
         EzOhK+DYqCm6YHXMuCpZ4oY64V/E7qFedbZm5zdtgmYMcSvFbO2kz4Fm2A/Y5QGhzEGd
         dqqMajDE1nigG/t5gTAfU+/11A7JPfbfd7hWtlkfC87BB/gsE+V+DEcF9ugZGkiZsKKP
         XTItHT9Ka2i2/Z/G2gr7yKrEKeHsNwjLb0gyVlnrlFFTj1iFLWMYx85oMiwnX9h+6ESU
         GZwNS9JFHAcSS4ZjD5A/toib89BtwC9CVGLDHX4+RvdRoAcKBi31/kr64IPVh4b1fRc1
         Tqhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=absoklHcYPPdoIYb1z9PD3KRa6jhtdhFYl2EslEHWMk=;
        b=guZU84mtUk7Mu3HJeSkfb1baj6fDqZo0vlVUjQJdvWZ0fqp0Dvu9tpPytJZdq/C6OT
         aEYxDc9rHxJPC/EWbzC1jJtSe1atPDU+RJAQqTky/KeY9nonplOIG09mUYSwc4f8/o8+
         zRXi0UOvMMehs0e31pMo+NScFnmITYPz9A/hvgOn2Zh9pN8BZtQwPeyNhGTLY0l5Dq4H
         OPKHrsL7CzbOMkvSqi7U+9Shil/dbl+9XARJzzXivhVt6sOKu6mSXAstRBpBD5qrzIdi
         6TbpyDA8Iq/XtL0+Obl3HjlNT9BwZzMx+4MsMHVT/UT8QztwdmImwxLCchNUYcK9UmmO
         IPWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=rfRrDaAQ;
       spf=neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=absoklHcYPPdoIYb1z9PD3KRa6jhtdhFYl2EslEHWMk=;
        b=qL2lmIXPZufg85FX2XCkkVbGvvNvUWMyW11B2BuTuHYy+9EtmxFoZFLY+8HKBWqttB
         sna5WHhsAQY7bauo7yzQVajyktjEkasXDLyyLnAr9ZtQyOnkDVaE6OnV7FUukWneonGm
         UXERXi9dDRnkZ974wORb1CDZNIHYz8NIII1pn0KWRDG/hb9PjxQjvxR/KfeqmTtBuJpa
         XDnSe+GBKF4s1Mp6qxx/wtGZH3HaZeHgMB6KNYPNCs6T+th14vvRp84hEBZnsyOBmGq+
         WZ0VWy++9B1qOow5W6y0S3Kk6hv0w1uG4OKxehg3BTtS8MY3wzsHyibxPZ6m713RA4Di
         OahQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=absoklHcYPPdoIYb1z9PD3KRa6jhtdhFYl2EslEHWMk=;
        b=HS3/sN59+tuIQ7c/4MpueS/JTev9z7d3rB1I9hL+HrjXB7ZlLEtimXeubnkkvsvBvH
         4Pl2etxyCFZBj08JVZPYBllJDAEgXco25FxM6Lpv1o78qG9/zwRpWrfZD3detosFh4XY
         Ee8tRTtKBWUVTBGvXs8rjD0hdfqq/i6vhl1UoCi+V69QqvLDxUU40C7lsKolwWZjI9lK
         cjRnzP6JXxG2BfudksxCRXpwSC9RP9BnHm6F//3M3Qupo8dlWatkVYsbKY88DeEE5vAh
         Rw+ya3kDFntkHvjm6cZ6AYeRHtUNXo40RwEXatV/y0Vz6JDG8vZXINAeHyI1jNb9Yk1Z
         DX/Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530U3aQesL2SP8gEvXkXqEyVQXXcTG4mb+2iEC6Bmum+M37kZnDK
	WIWSHK9Ne2gB4ZXJ3Rpk9+U=
X-Google-Smtp-Source: ABdhPJwO5Atisc6X0pTnGSlGNA76V8dYeO5lYZYCWq77/jaW5sjStuUwsn6wZY2AhFs2QczxOoc/UA==
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr17686532pfd.230.1590954884142;
        Sun, 31 May 2020 12:54:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:1cca:: with SMTP id c193ls4164200pfc.9.gmail; Sun, 31
 May 2020 12:54:43 -0700 (PDT)
X-Received: by 2002:a63:d70f:: with SMTP id d15mr17081142pgg.322.1590954883638;
        Sun, 31 May 2020 12:54:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590954883; cv=none;
        d=google.com; s=arc-20160816;
        b=bCh5dZfi/y8CQrpV9HfmgVwJdQXhVhFaUF8jNvIzc7iZlCXpS/giMdEm2x8vfxgr+H
         CwqMhhfE0vbBNWp4DirTEYXFcYz3coPvPwiMr0B3qRKohOG05ChXxeA2kUNFrWx4/nFR
         OfCXVxby0ZW0L/ru62aAr9W8yjH2yVpwPf2hFJRezi9hEfk5ILe2i0sJLRI2Nk+JTxnf
         922qQWh9H1DSvKSz1WAcnxnCi0sGsATTY+UaWK5Mbn/L9XRVhua8LpHH003quWO4AcJO
         HIQmPP5z4Jw6tDRBNGDxhEA1b7zTvD4UYx7OOm18zI/yz4GC7DC3biz57gWsQvK0JSIk
         JCAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7XuZ6aq76nVXApifOY2tG3hlgqIdoWHIRTm6SmU1IWw=;
        b=tir+jqHTtpBLsHd7P0r8baOydaHcRAogVQpCSAoAV4jwRJeBXEirI5BqDV5OZCj5oV
         hpVO8S5xKDmJHYBnRcUk2Glyi347tVjNXFLTkiXlih92e6kZI6Ary60gfBtTyka40VeK
         aK8TZuGlX6ZH71Zetjz66gy6e3mQAHcgBTbvVXlB3WDmihtUe4C0TvdBZ3sO0SI2xSXC
         jLJIXNeNLE/OZSanGuA64SZ9RWmJJL2seTfe5B9E4Fn1gn79s2/L4jFRRl92Pz2oGVVb
         RanJCVfC8uIAcJmbVwnNyNnGX4ZEqpWGi3sdEUDaqjXslOs4xoI/5Aw3DIvleAy7GV9W
         PokA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=rfRrDaAQ;
       spf=neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id o9si782923plk.0.2020.05.31.12.54.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 31 May 2020 12:54:43 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id j32so6155986qte.10
        for <linux-ntb@googlegroups.com>; Sun, 31 May 2020 12:54:43 -0700 (PDT)
X-Received: by 2002:ac8:36c2:: with SMTP id b2mr18231962qtc.257.1590954882766;
        Sun, 31 May 2020 12:54:42 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:a5da:931a:7f23:1d4d])
        by smtp.gmail.com with ESMTPSA id 130sm12286900qko.113.2020.05.31.12.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 May 2020 12:54:42 -0700 (PDT)
Date: Sun, 31 May 2020 15:54:40 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Sanjay R Mehta <sanju.mehta@amd.com>
Cc: dave.jiang@intel.com, allenbh@gmail.com, arindam.nath@amd.com,
	logang@deltatee.com, Shyam-sundar.S-k@amd.com,
	linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/5] ntb perf, ntb tool and ntb-hw improvements
Message-ID: <20200531195439.GB4620@kudzu.us>
References: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=rfRrDaAQ;       spf=neutral (google.com: 2607:f8b0:4864:20::843 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Tue, May 05, 2020 at 11:21:47PM -0500, Sanjay R Mehta wrote:
> v3: 
> - Increased ntb_perf command re-try sleep time
> - avoid false dma unmap of dst address.
> 
> v2: Incorporated improvements suggested by Logan Gunthorpe

Pulled into the ntb branch.

Thanks,
Jon

> 
> Links of the review comments for v3:
> 1. https://lkml.org/lkml/2020/3/11/981
> 2. https://lkml.org/lkml/2020/3/10/1827
> 
> Logan Gunthorpe (1):
>   ntb: hw: remove the code that sets the DMA mask
> 
> Sanjay R Mehta (4):
>   ntb_perf: pass correct struct device to dma_alloc_coherent
>   ntb_tool: pass correct struct device to dma_alloc_coherent
>   ntb_perf: increase sleep time from one milli sec to one sec
>   ntb_perf: avoid false dma unmap of destination address
> 
>  drivers/ntb/hw/amd/ntb_hw_amd.c    |  4 ----
>  drivers/ntb/hw/idt/ntb_hw_idt.c    |  6 ------
>  drivers/ntb/hw/intel/ntb_hw_gen1.c |  4 ----
>  drivers/ntb/test/ntb_perf.c        | 23 ++++++++---------------
>  drivers/ntb/test/ntb_tool.c        |  6 +++---
>  5 files changed, 11 insertions(+), 32 deletions(-)
> 
> -- 
> 2.7.4
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200531195439.GB4620%40kudzu.us.
