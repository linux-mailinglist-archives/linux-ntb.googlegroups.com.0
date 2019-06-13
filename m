Return-Path: <linux-ntb+bncBD3NBC7Z7QMBB467RHUAKGQE4L34R7I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A5F43E04
	for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 17:47:01 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id 75sf15261467ywb.3
        for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 08:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560440820; cv=pass;
        d=google.com; s=arc-20160816;
        b=p+lcPNVjl7rVB3hkSTUcmbAGQzqGocPD/uAU7VDFMxduuXcr1B3RkYpS9a9E7EOL0G
         UmL4D+gsNhoTjEJacgZd4P24daOT4B4MBd35gy46Bz9b8rIjn1y1Y+/E3Xv5ql+MLuHg
         Y1RWNztBSAK3EDrtFD4BFwJTQxve3IIVaKEHWzTnJAuVU1N7eaZDtspjy0MgIc0tl7KR
         ePX7nIPHaxlRQYMXyKDo13mZ9If30dhSuCGtkmv4hVxnq7OZS+qJPjFvF8dn94t2SWd1
         5736gAR3KMyUFWhYKv6+SAbNMwPfpKfMSoWaTv4h11j6XmLvqPGdWu5RaC+WDPi+8Boa
         kuDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=L9+YUQUWdcF82SqU63h/QTSYdzsTqvKW9hbr7K2RJ+g=;
        b=MwSmwe6cbax+Au2JImkEBPfMCDnCcqt4bQyRdUzIwfy+owieqhCSaoMGSA/ENeerVk
         vyJImci3hJ00Ml5ionZe8N9Acy1MYrzgTryZ9LxIHb75a8jmnhDo+6QKs7qDHulyE18S
         ku5E/4pzVITup/i+RROQ0EMcriQ62W9PIoq2mno6H2KVGvXhxPRywVysH/cqYU1PbtG2
         1Afm7auLrbcBUBWkXqpw4vDVhEHTPuRTLC4cVS7NJMtpz6UWO8jsIyDZTtn85F/hEabY
         AuEEzvZqNVGJCudQ0rv2w+pMlHmQ1KueqZNR3XwF/P18RGJ1HSMvozZY711umU5un/g6
         d/YQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L9+YUQUWdcF82SqU63h/QTSYdzsTqvKW9hbr7K2RJ+g=;
        b=qJGjtCdJG9ix9a4AGIolhkC9yaqxOaSEhwf2vK4USgcV0dw9rtITvZUrMOJqAv6V/g
         5tV5Hxr/THg3iy/8JZsdcFJussK4nSHVbbY0EyrcKGpsf4h+VgYP+yNsflKzvCd/5eT3
         VJxgF0sTzNSJgpVptkt9TCv7ey2ujpR6pfLAwD1+/AQXuFQIY7xlLZpKvHm2NKZiGh2i
         8Ujf1+0PhV8B6Juazk8PyxU/2fMhMihLah6qUkPvjiZOrmLWtoZdd+7YRdaYVxHesb0x
         R+B8p0QjqCQ0WJJSr3hiMc2F9EyojGB85rxcupfP8/F6u/fiIXR4J2kDx0ze/E3X4YsF
         iR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L9+YUQUWdcF82SqU63h/QTSYdzsTqvKW9hbr7K2RJ+g=;
        b=hWSekLFSh/A2lIYNzx6sMVWla8X+uXs6sxMSaSUP5Mx7bB1JPLkO2Fr/getuN3uAqj
         SJaAOuT/rhUTpiS2htT/fasdf2Ip4c1QvkSDSLGBie1VE9v07g51ultt5m4p1+rUIU4L
         GAC27srh3reU8vHlEIGAI8mX58fp1uvKB0nqy1wZKuCzMJZoUoshzK/6KiAKvwlo9AyX
         I0R9KlOC9kgOa9nnXjZ5YmCUYjNbD9lj9heQQAEC7JzuthRyW0OcyNS9k1jbYWXu7ksT
         iGXMnxZnr8DaI8KnU2m23LUTisvseDfa8wcEV3Pg3WfhE2NBh8rsgypJ9xQf/J8N/qu5
         Ssvg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXQsM6KV7WLWt88oZgFs5a73QzDXGqPCwSOh+/IUrMdx2v/UHZN
	bjY/Uxr8z6y7KSVjrNV5qmc=
X-Google-Smtp-Source: APXvYqw2GTcrF1yyQhyiMuwIOzhfsif8rRTvcG312ZV0bjKmLQ2ETnJ+hlmy+GfAflwQgq/dBT/aRg==
X-Received: by 2002:a25:d055:: with SMTP id h82mr44347344ybg.418.1560440819788;
        Thu, 13 Jun 2019 08:46:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:9b0d:: with SMTP id s13ls851485ywg.4.gmail; Thu, 13 Jun
 2019 08:46:59 -0700 (PDT)
X-Received: by 2002:a81:a1d7:: with SMTP id y206mr29020912ywg.7.1560440819492;
        Thu, 13 Jun 2019 08:46:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560440819; cv=none;
        d=google.com; s=arc-20160816;
        b=gBgBbcZHkEsN+2LkTDq/RwBMdjyfRouU1QhQAqOO4ydAx6DqX0vJ43zPWCS/AXF6OA
         n0gBgZ5o4jueZVDdHykzZV0DTW/a/Gn+R1vysofjg52w/uOtXr6Hruyv07OgyPbnNkQK
         9xydabaQUxKeSlihX3pC9ZPwQXzlGKbFE0K0Kg1a7auTUcr7UyOiFMSfzKLFWUwmqnut
         RAK0zqTZ3RaCvCaWIIVDdIVeQITiCd5qL297uAUpDpYFMIIaUGZkRM46q4XkIKF1m80w
         EwQhMOqTL6vuqTAavQQa0SIBU/IDGoRycwXhPF1EZ0D1vy3QSKWoAMM+kZtqg4gHK3Fg
         eIFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=R4fulU1ijRlbMfJjgUA0SbaWH0jhnQL+aY0i3KxUERw=;
        b=HbyzWMxdZrG7S6Kq/K4raZ/Ss2eEZV/sXZKWQVLAjJGwwQzeHqoGqwR0vTrB0w4dwZ
         BFLX/6LLdAp1HOisciwh4N93uSisurw/LkaMf2x3Myz3O4iljtLQqLGPHezqxWMaUzc0
         KQuxgA3e8AneLpcRs+miRhvca//R+K4WjlF+qkJjseOB2cwGLIJNfSep5vpFuN5tAjZV
         7suUEDl2l1juwtZ2Zb9Vu6gjUTXv+sFUZsvmm99aqAKuwJ/HqnFOuS3MyvduX/70GKlV
         8SH5vSQG3uKqK3VzTHFtQbSZmnVLXlA0Qd4rZiBaxA7fQs+NTtPuM0yDrf9bMUPNujTe
         iIEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id 189si7896ybc.1.2019.06.13.08.46.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 13 Jun 2019 08:46:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180] helo=[192.168.6.132])
	by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1hbRwA-0008JX-LL; Thu, 13 Jun 2019 09:46:51 -0600
To: Jon Mason <jdmason@kudzu.us>
Cc: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com,
 linux-pci@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-kselftest@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Allen Hubbe <allenbh@gmail.com>,
 Dave Jiang <dave.jiang@intel.com>, Serge Semin <fancer.lancer@gmail.com>,
 Eric Pilmore <epilmore@gigaio.com>
References: <20190523223100.5526-1-logang@deltatee.com>
 <20190613133014.GE1572@kudzu.us>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <985a41a9-80c2-7b60-da98-4ea92085319b@deltatee.com>
Date: Thu, 13 Jun 2019 09:46:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613133014.GE1572@kudzu.us>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: epilmore@gigaio.com, fancer.lancer@gmail.com, dave.jiang@intel.com, allenbh@gmail.com, bhelgaas@google.com, joro@8bytes.org, linux-kselftest@vger.kernel.org, iommu@lists.linux-foundation.org, linux-pci@vger.kernel.org, linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org, jdmason@kudzu.us
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 00/10] Support using MSI interrupts in ntb_transport
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of logang@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=logang@deltatee.com
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



On 2019-06-13 7:30 a.m., Jon Mason wrote:
> On Thu, May 23, 2019 at 04:30:50PM -0600, Logan Gunthorpe wrote:
>> This is another resend as there has been no feedback since v4.
>> Seems Jon has been MIA this past cycle so hopefully he appears on the
>> list soon.
>>
>> I've addressed the feedback so far and rebased on the latest kernel
>> and would like this to be considered for merging this cycle.
>>
>> The only outstanding issue I know of is that it still will not work
>> with IDT hardware, but ntb_transport doesn't work with IDT hardware
>> and there is still no sensible common infrastructure to support
>> ntb_peer_mw_set_trans(). Thus, I decline to consider that complication
>> in this patchset. However, I'll be happy to review work that adds this
>> feature in the future.
>>
>> Also, as the port number and resource index stuff is a bit complicated,
>> I made a quick out of tree test fixture to ensure it's correct[1]. As
>> an excerise I also wrote some test code[2] using the upcomming KUnit
>> feature.
> 
> Sorry for the delay.  The patch is now in the ntb-next branch.  We've
> missed window for 5.2, but it will be in the 5.3 pull request (barring
> last minute comments).

Thanks Jon!

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/985a41a9-80c2-7b60-da98-4ea92085319b%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
