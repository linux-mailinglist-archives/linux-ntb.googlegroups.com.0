Return-Path: <linux-ntb+bncBCS4BDN7YUCRBZE5RHUAKGQEMFFMDOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 7271443670
	for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 15:25:57 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id 71sf9248564oti.2
        for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 06:25:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560432356; cv=pass;
        d=google.com; s=arc-20160816;
        b=kKgrqqJr5n2/i/pX0ByRuAKvZ9+nmupM5M1Vw9z5kJYfZUr1gt2XztxKy7DArccfgK
         P3NjT0zdWgiaLkqKP612bqyV7DscDIWlOD4EVA4sqm0TddUtyTLVDhvngPbo2PC+kYja
         eLBNxnLLaKzsQrXJBMGlR3rOE6USANeITggMwbeqpsvXdNOniDqkgJMvvpVFwi5Y3Ii+
         OuNQ11qBHnnceZRJqnweC0dqAZo+TCuuhbKc1h1cneskaV8y5Nhh8AYdb5h06vLJqdSL
         lHksjb+rNQqqIX6NpGinzPPLSlvPb56EkBcatFcIl1A/+AYW6DfNrJZuo6FfCfNxKUya
         bXEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wYVY3rj3PE0GicEtmQkeoy9zoxzZZkQbCBttxIT0ibs=;
        b=rWz/9BXLliyGXLLt1tXRBPlAndD05XrGIFX3sJa/mR5MX0NcFeqgvhqqxfN5aj1Znf
         75DtWgen/8uP5r72y/MCngNLaJkLWqnvCrsu/9fHn7sB9/iDqALlsSHMP3mH+LPCtXNk
         QvsokTOCW8eYr0g1Exp+8WNKjWP1s8x7QRVHGhsjcRVGsBYG+Rn/UbbTIpE3SbRpYTAW
         vthUH17/CPiW7V4nNwiUgLSIbq1Z1G+5/i9HTHIuCB0RvK1PJiqWkAFEV4kN6pwFm9Eg
         MQQYHxuJGghuHnqY63RKyLyZ7TpIZixn6LeAqbLdE4Pyb/ehUPdVFsoIfTYQX3pYXY6p
         k8lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=T75PJq2E;
       spf=neutral (google.com: 2607:f8b0:4864:20::c43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wYVY3rj3PE0GicEtmQkeoy9zoxzZZkQbCBttxIT0ibs=;
        b=YzXeg69YYebHkaYC/msxsTM3CpWVKzDyjjKLLVRXUQM6LV1T9fwkQvLcQ/B9wtL+r+
         nyK/OZmpPLHeICK5JbzxXKBpZ83/QuCmO/hCcP9j1ImTiCq+E5+tFt51n9GKRxD8YbcB
         XEmSpfh/wOLMQyCBZhg/L7MHefM0wsk0UliCL2FSL4VOQPnHdWyd8cWMzAadA2IqVSoB
         vC0hoAdoxyHSTVuyqr0Bj/4gZ9MmrfrZe3r3uNR6gjZh/LR4K+O4GnPbT9SyNr8VNrry
         zExWjhtQkN5NgLdw+KpBfwkgeQs8gleORpUF+dyjk/u94icHQx6dNjepJ2q1FDSV2EAL
         qPxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wYVY3rj3PE0GicEtmQkeoy9zoxzZZkQbCBttxIT0ibs=;
        b=ndB4OYbFxJHl+IyIWNkImwaFpKc0Xi7RV71VOaKK78Y5eEw27vOeCmIxXblGhKy1bC
         GRAcQgZQiWjfPyIUzcmfgbleAuYYgc2jEtVQZkuuKjrgJwwtqQoo+NHXU65wGVP0Ih6c
         CFs9w1npJKJenj8B+Sz4wJhVOAYaioZE3r2T2N/J8uDKlWi7B8gqWxvkDBdCHwZ9RPax
         ydmbMhsxp3R4IieiCYkE+JsmExg4FwBC+mRganU2q846/E/ZEg9pesk3MT6yBQgbtoGD
         wIJ05dedTDI9vemvd4Y+SzaF3T+jqiQI66RA2sIMD8XVO210fJK6llQZzXOD/YUlliGm
         prFw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUeyi8h7P6QPlHEFb4pMDpSf1zKZEz4aO1d72I/5FrINkxrMvJT
	UlFZNHkrvgfO/sITXEeHnLU=
X-Google-Smtp-Source: APXvYqzIcM2vGOS9SQl3sGWINZtbYTLKuxwgs+ct4hzwGQ0+20XcitrhXgXcbpFC56hwNkE4oCKz6A==
X-Received: by 2002:a9d:6d0e:: with SMTP id o14mr35881812otp.205.1560432356398;
        Thu, 13 Jun 2019 06:25:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:6141:: with SMTP id v62ls848228oib.9.gmail; Thu, 13 Jun
 2019 06:25:56 -0700 (PDT)
X-Received: by 2002:aca:ed50:: with SMTP id l77mr38634oih.157.1560432355987;
        Thu, 13 Jun 2019 06:25:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560432355; cv=none;
        d=google.com; s=arc-20160816;
        b=HFJsvqanmU/hNNvT6rN95WNrswLyg0PjKDmf5uFh2vyOpfkWlvaI15VyYrcaJYdf+f
         SsG9tx0NQSokk2WHt5clmwHjD7/H4TYlA9O4e33rHmrw+tHa/BYB/x3QfMIMf5DM7cN4
         5l2zDyAS2yJe3f54TrWq9I9/rHc3EmVCmH4j0b3OIrHwU2yXWKMZN1k1wbZGjKapbjQY
         tQDEvXLKVciDILvcCt8FMVE7B3HM90Sv/EJXyO1TQXp45aEm7K5wQlUuyjvAEtj6ePAU
         JdP0gk7OpoWGSPpFa6CarGa/3KVKPAKZ5UNTzAYbSEuc/hxDP4Xg378YdkJAv12tpNOQ
         bZrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=L8n107KncEadiGucDyUOK1dc7Qoutbu/OkCN1q9wnKQ=;
        b=H0TELobw1jzl8uY35NcuQrKN+VYtL5f4QvOWg9VeWI3d3JhCg/Q+S8NH30lC5Mz20S
         5KnEoaYo4XUXbChzFrlrGTZcza/gvX6nzgAeh2ov8K/VDb/EHXT4ZL0xdyFHpHf6Ahfz
         PPDEHIW8JtCDavZgtpFhWo/pNO3ROfAiLWoCrOiMVZHFd92MLHzZqpExjn6wx4YAeOJG
         pHpd1SAWszv5l/u5hUlGgp0Y0JtRO3MqjvcEsOZ2fY6E6PFvYXlvtPFn0Dm5TpK1SVNl
         yHFHJah34byv7FmUQ2sZ4oHZcbrG+ozpjJqx0Rv3MkL77hQOo6/BVckf1jslegOaJLY9
         adoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=T75PJq2E;
       spf=neutral (google.com: 2607:f8b0:4864:20::c43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id y19si153743otk.1.2019.06.13.06.25.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 06:25:55 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::c43 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-yw1-xc43.google.com with SMTP id b143so8325412ywb.7
        for <linux-ntb@googlegroups.com>; Thu, 13 Jun 2019 06:25:55 -0700 (PDT)
X-Received: by 2002:a81:2f4a:: with SMTP id v71mr46927896ywv.51.1560432355472;
        Thu, 13 Jun 2019 06:25:55 -0700 (PDT)
Received: from kudzu.us (76-230-155-4.lightspeed.rlghnc.sbcglobal.net. [76.230.155.4])
        by smtp.gmail.com with ESMTPSA id p12sm740145ywg.72.2019.06.13.06.25.55
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 06:25:55 -0700 (PDT)
Date: Thu, 13 Jun 2019 09:25:53 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Logan Gunthorpe <logang@deltatee.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	Kurt Schwemmer <kurt.schwemmer@microsemi.com>,
	Kelvin Cao <kelvin.cao@microsemi.com>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-pci@vger.kernel.org, linux-ntb@googlegroups.com,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] ntb_hw_switchtec: potential shift wrapping bug in
 switchtec_ntb_init_sndev()
Message-ID: <20190613132553.GC1572@kudzu.us>
References: <20190325091726.GD16023@kadam>
 <e2bc8cf0-8e3e-9335-e21b-4a9697e9c0ef@deltatee.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <e2bc8cf0-8e3e-9335-e21b-4a9697e9c0ef@deltatee.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=T75PJq2E;       spf=neutral (google.com: 2607:f8b0:4864:20::c43 is
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

On Mon, Mar 25, 2019 at 09:49:31AM -0600, Logan Gunthorpe wrote:
> Thanks!
> 
> On 2019-03-25 3:17 a.m., Dan Carpenter wrote:
> > This code triggers a Smatch warning:
> > 
> >     drivers/ntb/hw/mscc/ntb_hw_switchtec.c:884 switchtec_ntb_init_sndev()
> >     warn: should '(1 << sndev->peer_partition)' be a 64 bit type?
> > 
> > The "part_map" and "tpart_vec" variables are u64 type so this seems like
> > a valid warning.
> > 
> > Fixes: 3df54c870f52 ("ntb_hw_switchtec: Allow using Switchtec NTB in multi-partition setups")
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Sorry for the delay.  The patch is now in the ntb branch.  We've
missed window for 5.2, but it will be in the 5.3 pull request.

Thanks,
Jon

> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To post to this group, send email to linux-ntb@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/e2bc8cf0-8e3e-9335-e21b-4a9697e9c0ef%40deltatee.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190613132553.GC1572%40kudzu.us.
For more options, visit https://groups.google.com/d/optout.
