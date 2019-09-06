Return-Path: <linux-ntb+bncBDPYJBFU6MIBBVPAZPVQKGQEQHHNSOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 200F1AC361
	for <lists+linux-ntb@lfdr.de>; Sat,  7 Sep 2019 01:48:39 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id x10sf5754644pfr.20
        for <lists+linux-ntb@lfdr.de>; Fri, 06 Sep 2019 16:48:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567813717; cv=pass;
        d=google.com; s=arc-20160816;
        b=pKtatS+dm8DXEhi0h/7NbvTQswuP2fjoIMEhh0F2k1Bo+1qHc7bpZKUqk0ZHpgNYTq
         ztNTBeLOdW8RgJl4p9KeSIsiQd48OHGF3jU0PPsQ+T8Qw6qGXMKG8lRk9woYN8E2IPHR
         aBvwMXP5Bp9c+Pux0iC2BtuNUboyxZVZaxReXRwiOIEvjQfwgbXdA4+K23kwpjuJMsdY
         sSoDLh+/OTkJkiJCrH+F/64GMaVizad1XwTmRXRvDNHEOxGqsQQXSCUfRf28kzESv0nw
         94M07MojRWK3jppmRJuh19TAj6MTM3pw1bDjlze2q4hfiHnWUc3GR64SmzIJa0qEA2CW
         U4Sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:cc:from:references:to
         :subject:sender:dkim-signature;
        bh=nOWW5OCRGXIiPju5qWs9XaveMmWVkWQCGOgTUO/MFEQ=;
        b=QE702dz40wYtjLd9Kc0RuvKZLd4N5wfBKsmBr6BB86cpyImGktqO+Ilo+cWXKlCBq/
         q8E9Em5HDO+87WZN5r+jNc13gPLHQnPLuRFm4YpAk2ZYzRz5l7dB1DbmNHQ/Wj8ZVKc8
         uNfwEAWvA5MBdHbf9heshB4tDA+TiOXEwRo8n4mBVlFB5vTF5AWbVquTCPHne/4pCBh9
         BzvaO1UQVjDoLih52bBxxxTqN1zO4KKssZlw1DDesSbTixD8/hA9+OwN5iQFV52MFYqW
         pErNNccIGn0Ys7Eec99sT66MkjeI/lZVEa6HRC4wn5Dk1j1yvyBK+gUB6fBxMbbLq+We
         n1zQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623 header.b=JEEmEyZF;
       spf=neutral (google.com: 2607:f8b0:4864:20::232 is neither permitted nor denied by best guess record for domain of kchow@gigaio.com) smtp.mailfrom=kchow@gigaio.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nOWW5OCRGXIiPju5qWs9XaveMmWVkWQCGOgTUO/MFEQ=;
        b=M/ZwrQhOdBDoetA6woBPpf1k4Dtvuwo3adSgY2A8spR1CZNUEjb3Tvy/53gHiX0QT8
         33/zWO9/bqkY4Au0ySaFXRgM1y2s4330FXLspGifo8H2c+7qu6Nwp2+cyAAncemyDI5Q
         aQQc/BU6rMRth1ZjiruidIacDjMVo1r8hSK+li5RAER+bfSwtak2V0GoiUGKXYBmfXT+
         vn8ofMA/rGx0T2FkIgqxqH6fuH6S2K5GmTYCMIfKWdxKo5A0V0dFXWCoZE9aaDotCTCH
         /Oa+cpMkjUpXg1L2Wbdfahsvz86e+gOcnjmABNAViA8XGluUuDI7wosuK3opyNslXBiv
         4Shw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:cc:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nOWW5OCRGXIiPju5qWs9XaveMmWVkWQCGOgTUO/MFEQ=;
        b=daGDIohp50tna8/j8pk9CxyuK26mtcxDygPJgzq5Cnt8PtFGu2I7V1KYw+G2AsNrm7
         YPcvn4bjQxlvLSEtU0oofNO0q9ed1KyQCO8NLVJkVBGXrVjlo+0ok22iOTje+Uiwek5E
         16yQfhaO5z1O56do3o9n3JMtWG35abCj80IIm8/5iDBIomPwkdmEOMLnjMQ8S0RMJPEp
         9i3oY8eCl70xiJpRH2gKbsOhhPAX6+aZXj4PFi8Gj62MSC5NPyPD3yvVApB2P2qsl20/
         mQO0fsSfA3yeKTHUh7b8Oh3Gaoli3Myh+IbOfpNqUBF7L5uz40Lx+gtLaB0JIEBv/V6K
         UB5w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWO0B49xAgYzJgEXOHPxyALsdi9gt0mmaAMVWygfee6aLsTjdK7
	0SGUhqrM1OgdTjZUOOLmArM=
X-Google-Smtp-Source: APXvYqzQU4+Te0ahqhTGI5Rt8rNiyp6ashXYhR3F+aTuYU+g1HQqrdDE+gIgPgQb7KlyLoad1+FLlw==
X-Received: by 2002:a17:902:7483:: with SMTP id h3mr11691856pll.163.1567813717592;
        Fri, 06 Sep 2019 16:48:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:a410:: with SMTP id p16ls2008348plq.1.gmail; Fri, 06
 Sep 2019 16:48:37 -0700 (PDT)
X-Received: by 2002:a17:902:4545:: with SMTP id m63mr12077685pld.45.1567813717312;
        Fri, 06 Sep 2019 16:48:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567813717; cv=none;
        d=google.com; s=arc-20160816;
        b=jW8rluuYri95UB9xcb78J3hT76yPVLuARbAvrJi0yU8LVljfY0qzA3Ogld/S2aJMod
         hEM8ZavbdjPoBYQS+n1Yf3lYG2GQ3uZ5FJt+DBB3zYaDrFn7gaaNBngIN9i//h1b1GX/
         eEUhfejiMMpptlg1YczLcOiJ0VCxSD3zZPYhCH95V7e2WIFbLjCi+qCWGK5rBuQ78Wi2
         JNjoi5hx4fsCKB4VSmHuPnFAoGtYd5SP6j9/2mp441aK6gBIYCR0x68F4e1kJqRsS0tS
         i9jz3fIXd8BGvPJTeUhnTdF30Y6sf3+JySzUVJYq9MvNdNFg+oYyBn3rVgno5e14tpny
         fnHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:cc:from:references:to:subject
         :dkim-signature;
        bh=zgzwkt+5f1+/iBFBVoRN90jtDmZfYNKs9pY9DhgTDjc=;
        b=xogGmVwxRlB88JZBk8e18TatGILcF//Zfqx5NMmHmhdV1q8fv2pd7F80F2Bc8g+o3I
         kHvNm5BMTuAEhPqukOuW4LPG3fZEBPNpGzS5caT+otopoLgB481jG8aYtu7gxZ+QOpvP
         7UWNl8OVMFNP+PiP2QvUFlzk/GgyHCI0EJW4N8VFUQUL7Rwbwb90QtU60HEnyRexcnYu
         2ohCvevYHlROeKmFYddS2UMTlUZTLksaYlR61F+aLOW1qiu6LBQsu3XtG8OjSOJmtlVw
         27Fcx+T6b7O3SSTHMt6uBO3XRnVe2zEMEZncw/yN0XTxhKB+t1+qIMWJrzC8E9VQdwxH
         xz+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623 header.b=JEEmEyZF;
       spf=neutral (google.com: 2607:f8b0:4864:20::232 is neither permitted nor denied by best guess record for domain of kchow@gigaio.com) smtp.mailfrom=kchow@gigaio.com
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com. [2607:f8b0:4864:20::232])
        by gmr-mx.google.com with ESMTPS id w72si457424pfd.2.2019.09.06.16.48.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 16:48:37 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::232 is neither permitted nor denied by best guess record for domain of kchow@gigaio.com) client-ip=2607:f8b0:4864:20::232;
Received: by mail-oi1-x232.google.com with SMTP id 7so6441097oip.5
        for <linux-ntb@googlegroups.com>; Fri, 06 Sep 2019 16:48:37 -0700 (PDT)
X-Received: by 2002:aca:1004:: with SMTP id 4mr8798928oiq.92.1567813716654;
        Fri, 06 Sep 2019 16:48:36 -0700 (PDT)
Received: from [192.168.71.78] ([12.235.129.34])
        by smtp.gmail.com with ESMTPSA id 23sm2218038oiz.8.2019.09.06.16.48.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 16:48:36 -0700 (PDT)
Subject: Re: AMD Epyc iperf perfomance issues over NTB
To: linux-ntb <linux-ntb@googlegroups.com>, linux-pci@vger.kernel.org
References: <CAOQPn8sX2G-Db-ZiFpP2SMKbkQnPyk63UZijAY0we+DoZsmDtQ@mail.gmail.com>
 <a5a2d312-f6af-f20f-0594-98a7f80c7a9d@deltatee.com>
 <bce9a1d6-1c37-b9f8-a613-2ba68211fee1@deltatee.com>
From: Kit Chow <kchow@gigaio.com>
Cc: Logan Gunthorpe <logang@deltatee.com>,
 "Eric Pilmore (GigaIO)" <epilmore@gigaio.com>
Message-ID: <d719f986-f9ce-a0c3-f9a1-1fe06a3cc0cc@gigaio.com>
Date: Fri, 6 Sep 2019 16:48:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <bce9a1d6-1c37-b9f8-a613-2ba68211fee1@deltatee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: kchow@gigaio.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623
 header.b=JEEmEyZF;       spf=neutral (google.com: 2607:f8b0:4864:20::232 is
 neither permitted nor denied by best guess record for domain of
 kchow@gigaio.com) smtp.mailfrom=kchow@gigaio.com
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

This is a follow-up of the initial problems encountered trying to get 
the AMD Epyc 7401server to do host to host communication through NTB. 
(please see thread for background info).

The IO_PAGE_FAULT flags=0x0070 seen on write ops was in fact related to 
proxy ID setup as Logan had suggested. The AMD iommu code only processed 
the 'last' proxy ID/dma alias; the last proxy ID was associated with 
Reads and this allowed Read ops to succeed and Write ops to fail. Adding 
support to process all of the proxy IDs in the AMD iommu code (plus 
adding dma_map_resource support), the AMD Epyc server can now be 
configured in a 4 host NTB setup and communicate over NTB (tcp/ip over 
ntb_netdev) to the other 3 hosts.

The problem that we are now experiencing, for which I can use some help, 
with the AMD Epyc 7401 server is very poor iperf performance over 
NTB/ntb_netdev.

The iperf numbers over NTB start off initially at around 800 Mbits/s and 
quickly degrades down to the 20 Mbits/s range. Running 'top' during 
iperf, I see many instances (up to 25+) of ksoftirqd running which 
suggests that interrupts are overwhelming the interrupt processing.

/proc/interrupts show lots of 'ccp-5' dma interrupt activity as well as 
ntb_netdev interrupt activity. After eliminating netdev interrupts by 
configuring netdev to 'use_poll' and leaving ccp, the poor iperf 
performance persists.

As a comparison, I can replace the ccp dma with the plx dma (found on 
the host adapter card) on the AMD server and get a steady 9.4 Gbits/s 
with iperf over NTB.

I've optmimized for numa via numactl in all test runs.

So it appears that the iperf NTB performance issues on the AMD Epyc 
server are related to the ccp dma and its interrupt processing.


Does anyone have any experience with the ccp dma that might be able to help?

Any help or suggestions on how to proceed would be very much appreciated.

Thanks
Kit

kchow@gigaio.com

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/d719f986-f9ce-a0c3-f9a1-1fe06a3cc0cc%40gigaio.com.
