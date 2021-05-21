Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBKESTSCQMGQECGJ5SMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CC438BB58
	for <lists+linux-ntb@lfdr.de>; Fri, 21 May 2021 03:13:13 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id h23-20020a67c1970000b029022a88436f30sf2254533vsj.11
        for <lists+linux-ntb@lfdr.de>; Thu, 20 May 2021 18:13:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621559592; cv=pass;
        d=google.com; s=arc-20160816;
        b=YTw9HBTx9n4trgUv8xqgmKiWgoIkrDcqr2VMTanAIJqLScR6RoTs2IWGPU9QoPCU1s
         ZXzEvfixzxcXTBLVh99kGadrY+FXAHSGJsXEgCjl/XyLeFYKXsgRcR1qNifRwkgQMjrL
         QD7YMT1HinBw49Du98lPc2i5iCl7S/XdvtaDKrWQ4CP8x9xaobTAcGfP+MqnaYsP4O4c
         3z/UllUWRon/jjFsQaeQOmdOCIOTxpZyGNiVVyaW+ZCxRt4p60uN2xAUJrBwRJvypGgS
         ipZly0o+NY6BMMBJqIVrg/h/hJ5D5SBSKNKHM2gLJ4z1zSFAHAX6ZCtRbUaISGSIgXI4
         O/1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=jh0IXr8HFSv0qM9uzvFXQDfZAEMx3weXuqgrQMoxyH4=;
        b=TVV+ndt9IDTc1zvlx6W3T0oq5Uiw2NDJrnyYQF1ZDgYtuv356yFjHJXQ/YFuPzrTV4
         e4/TlD5fxkZQFVHlBgv6651W2Habxl0HvFtSA6yAxnURnVfb2fQ4ehLf441nt2ZqFHp8
         mEYUiO/Zp/Qgz0pHvG1j1nZDvs35jmQeKEMmLslmQkTUzIyGd4ZjWhx91BjadGsy6yam
         BxGCuhMVoH7XGXZDMteRwWNPYcKxIEUgd1yyA7diRFaDn/rnoYQh1XhLCzqH3W6sLNg/
         Q93+v2ZQvQnkzzaXVYMqy5/tNf2n5T/EY5KzNwuV2kJSN1DhX7K32NmcsuTUuPrJZHcS
         HHSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=RX8cn48W;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jh0IXr8HFSv0qM9uzvFXQDfZAEMx3weXuqgrQMoxyH4=;
        b=FY2QZkO1gMUCXBD56YumKM7mwSMXkWIXgIRtK6D20G3LElr1P3rw9C+qisHvvGPFHe
         PELEHKcC+4v5BUcYTfWAmcQ4QiG8xhCkVYDEzK98h6MF0yHIVs96VQ5Mum9flQcSYdo3
         caE896KfqBSgKueONf3kV9vZn3Ox+iPyYiQE2M4d1mO+zuXk392cl9/B5ZaNn5TtuBpb
         6lmWjd//opqkcFiKWdbTC9qSis6CPg/czX09NMEHq3m2ROS0TE0XXU8xeR6PIFtfGMmu
         uLxC8jVvejwOpazsc8x5DeuQFV4Zz5XPOxIYNsJWxMCp8OOI8h2POBOVwfURuqn225Wv
         VrLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jh0IXr8HFSv0qM9uzvFXQDfZAEMx3weXuqgrQMoxyH4=;
        b=iHpfBcpc6EMhEzUGTwBrLoegkn2dTx+YZP6Zt2hoAdjmwc0hKeGEqYMEPCoLnKOL3t
         EZNPCcb1LzDMesg3Aem6GcGqQkzc90ftvhUJo3DVTsWB12W0YbNfM0LgYTZZPcV06Odl
         nXRHKJQqW8OQ4tBKx5eJwwf28R4QQlECVTtBiTLYnMgwD+QXnw0QBXrm68BcI83AO9GM
         IFvQp5mY3d6QbXx3Ngc+ULSMFo2/A5C14jM8cGbYTAC7EVQV7k9SZIEyLyaeDQDJuR60
         E7GQAA/fbJkjt7cB00pMZKk1essOJFIWjsn79HxdE+5n1AebyLHi6Pq+yk52qdyf/Giv
         lZCQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531fBXOIQ9AZ4VNjwSDRJ2nqz5O1P4xSqOAlbLNKs1K2liiMO56t
	vJlE5s3/aq/+Qc7DwkJAlRo=
X-Google-Smtp-Source: ABdhPJwvFdHpb737Gn4/l6jW4BqtIowTtYXzNQE9QYAaRBePIoBE7tYij+S/m5+LIrIvt+jJJyIiog==
X-Received: by 2002:a9f:2c84:: with SMTP id w4mr7383258uaj.99.1621559592633;
        Thu, 20 May 2021 18:13:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:21c9:: with SMTP id r9ls959057vsg.2.gmail; Thu, 20
 May 2021 18:13:12 -0700 (PDT)
X-Received: by 2002:a67:e91a:: with SMTP id c26mr7616463vso.19.1621559592010;
        Thu, 20 May 2021 18:13:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621559592; cv=none;
        d=google.com; s=arc-20160816;
        b=yQ5yxpyRONmAFKuE2kZSX3moaMBhBv1UHDv8VFgHFk69U4XpLWwqBTiHfHinWHAZSk
         GIFnKfm+4G8eVK4cAbxowVQ0di7/6Y/D+sXleQO+pY753g/JSFAb5+OzeeMQ/UxqoHXB
         yRonpcx8zB8hq/pweXubwp5mkwAlbONRQlgnwXn7t1YONkLB16ZMMl3hjKZZ7O6uMELz
         dx8gDzRmW5p6Fw9t9jy18M/a7RWWn2xxY3HusPLhdaOXzFdiHjuWz+0ptpQ2/zS9sp0C
         1pafykfMrxSSg+Ugr64hAqF4AfJcxxjJfvFJZidvyDwixJjTJnBQSmJ6S1BTq1GEKITT
         sHhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=1CjFRZ86QxcaL2AxQ6x0AxwuNzss25bhBI1mESRZnlU=;
        b=YxCxxf9R96jfyzW2gSPIg7ZXna98Cj6Ai+W5o5ieixCOO81Dv3BYdxMcfkjYwj8jUI
         QN3jCHj7B+xlLdbSWaGbzjxW/B52TZMd2GcmFl2mK0sYHeWpgTnZTfr99ZOQrc6ScJU6
         gdMiZlb6wNotdiAy7//sBr8MghNYnrCWp9eDWKYQvjE3Q0HCObRBmeyAj3EeZebUYaV7
         fc/AqUdLwKl9QsRvWCPy97n5ggS0+rfYbJdDX2qEs9x99CFhmItvyrew5u6AYV4mB0Xr
         FFUe5zCtGlbdBasfN0CfaSC4rvlEiVoiPaliePQa0oF1cLMwf3qA/+3TcSH8g40dU4eg
         841A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=RX8cn48W;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id h7si477253uad.1.2021.05.20.18.13.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 18:13:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from s01060023bee90a7d.cg.shawcable.net ([24.64.145.4] helo=[192.168.0.10])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1ljtiv-00053Y-CL; Thu, 20 May 2021 19:13:10 -0600
To: Jeff Kirsher <jkirsher@ixsystems.com>, jdmason@kudzu.us,
 dave.jiang@intel.com, allenbh@gmail.com
Cc: linux-ntb@googlegroups.com, Alexander Motin <mav@ixsystems.com>
References: <20210520222323.104901-1-jkirsher@ixsystems.com>
 <ebfdfe78-67f2-2096-5e89-bd1b65fa819c@deltatee.com>
 <feeea59f0612d257591cd14953d31c5f1482c012.camel@ixsystems.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <533937f2-7d41-7bfc-9323-e67c8d4878c9@deltatee.com>
Date: Thu, 20 May 2021 19:13:07 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <feeea59f0612d257591cd14953d31c5f1482c012.camel@ixsystems.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 24.64.145.4
X-SA-Exim-Rcpt-To: mav@ixsystems.com, linux-ntb@googlegroups.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, jkirsher@ixsystems.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,NICE_REPLY_A autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [RFC] ntb/plx: Add support for PLX hardware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=RX8cn48W;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
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




On 2021-05-20 6:17 p.m., Jeff Kirsher wrote:
> 
> Is this something new that all NTB drivers are expected to adopt?  Just
> asking because I used the Intel and AMD drivers as examples and they
> are still using pci_iomap(), etc...

I can't speak to expectations, I'm not the gatekeeper, only a previewer
passing by.

I believe they are newer than the AMD and Intel drivers and there are
new ones added here and there. I think generally, kernel wide, they're a
better choice. You'll find your code will be a lot cleaner, smaller and
easier to understand if you adopt them.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/533937f2-7d41-7bfc-9323-e67c8d4878c9%40deltatee.com.
