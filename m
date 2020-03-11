Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBQ7EUTZQKGQEOKE4UKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C873182123
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 19:47:32 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id j10sf2095824qkm.12
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Mar 2020 11:47:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583952451; cv=pass;
        d=google.com; s=arc-20160816;
        b=p7QYRNSbeJC3j4PEwJYp0X59ZIUNJfcmX7LeqZQ663cRggRWO+Y+b6KP9N/tbUsFgP
         Rrm3XNaIPcBwTE+OV/b+2LmQUi1VOv1bCkE6MlPKAgGDtcAOItZvwFH70cB1QO0XnonO
         AfhBUzMUzFw11iTcYWUkEG6EW3KQSMU5S3/vbHjs34Y7LSAE56VgXBNd/waJEvIeJKB1
         JCjzAK3C904KQkpXqwvQCgcMFllSTFIQ29CNCQJbxEzy7ZQs7GvFz+xMTAd/bdwemv+E
         u+x3mGKq9QLMNEgqFKubhEbOFTRNZPjpT5RvcIgxsm7zlOUL9kFeN2fJwKboG/SOC3n1
         OQ1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=oZEApSff4GbkV8q5zgh98r8J/yO7fN3IAEcB4K34drY=;
        b=X12QBB+C+Za0fQX1vItfnpWJkGj/5ZaTQo4eLzDjuP8HJehacE8t+3Z1QDypNpjeSb
         XKiNVdC3PDAZu1m2GKsU7DyPEpWKOB+CsabT7ilqPEXJ+Witc1d0TpoOFhcga1xGG2bC
         yLGjU5Kpo9kJA6GzQO0jLxtalJ6JCqD04x0rsUTzdoQmS/DOm8u3MuhCLVVk0h6T3nWK
         IySAAnuvVsr3oAB4vvyqTZ8XFyfMNgTPAJU/X+/qpFPWIZo0aJVWY2ueYv7NvwLRWJov
         fGk6qBFEP80aZYxxGJCEbdRYmJv3CpCoJs0CrpBGJNpfC6m40g/kTsDo1RQI9nfcOTO/
         QU/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oZEApSff4GbkV8q5zgh98r8J/yO7fN3IAEcB4K34drY=;
        b=KTrfmriimJiruYzhpd2W3wDVr8qQudUj7KfzNqto94bp7al20TnRRcl8lm3cLVCyxO
         +H6SJoUfagY3ExfVvQLb+zCK0v5FLvMKm1gVzVXGOsc2F5r6RWdosZEHB7yS0+d1s14O
         kBAzRnMIhxB1M4vFLqUWBGI4+Cmj5N52Ywmhx1mlG9I5V4sYrQj43aRj+4haUh4JO71W
         P8K/3TqskDD384lI04/IMVzZhddQ9om0NnCk2CWVGNtSp4RBTjt3acTHWY8ORDiVnpTM
         SNL60UFDS93w8h8gzTViCgX2+4EMOSlY8ICLkBUU884ClHfijs8wqDocq5cynTe7rbWT
         CWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oZEApSff4GbkV8q5zgh98r8J/yO7fN3IAEcB4K34drY=;
        b=AUboM2anrJVPDSwgbF1Qjexf2+qAtLc8grN61w/lDLFtvWtsFxWTttovh6jSSdwaro
         WdXSCgk3ndCrHJJWOjxlm9NnWZQuRvLZJk6fplppqefOKxNfZUxn6GtLPTq3MskhFwft
         7W7D6zdy7ZeDq6348vSPtkxIDpg5hEypsw/5JMjN+YCG4M+wRVHcYwRr825yc3VHwYXV
         mrYgyhGTEeG6/rBCbVryBYqmDBOuzeI6V8iQtv7/XitXdOHcxqMNou3LI2Sl/+Sr6BR2
         ryQIM9nuNiQVx1670S/XQcysbwmG+YiXJhV7wKOaTosv0LBTLaPEdEEdxsZRzGBTJeNm
         M7Ng==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ3o+Yg7KsfbkLaJxk81z9QTKDcSXTMiQewTllCwuIkSgQjT9EKd
	v+5zQeWqbZ5skfldH2pxNx4=
X-Google-Smtp-Source: ADFU+vsRRKO8K3y9dAzUrIN4ga9Bm8eHdXaUPx8Z0fi/aFz5bCZhWzq7HseWNKRFaX4OlywsCHB7jw==
X-Received: by 2002:a37:9b12:: with SMTP id d18mr3602924qke.278.1583952451680;
        Wed, 11 Mar 2020 11:47:31 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:2196:: with SMTP id g22ls1582001qka.7.gmail; Wed,
 11 Mar 2020 11:47:31 -0700 (PDT)
X-Received: by 2002:a37:4b97:: with SMTP id y145mr4338319qka.167.1583952451126;
        Wed, 11 Mar 2020 11:47:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583952451; cv=none;
        d=google.com; s=arc-20160816;
        b=rdRdlZWJDSdes8jnmVqHgagT41ISwgsrM0+t761EpuiQtmfe2ydEu9RHu3eai/ycHy
         9XPEAUp78MttsmcAxPdXvnXElVp4K4mVn29ME+rurz7g9PcDOos8y49wun84bD5tZNLk
         C4XIZtm56QE4XFKOQohjRAe1VQNtMIFiqy2zxhnycbGeoPt3z2X3q1GbL5rrRu1hRLM1
         Gn+s1FZ7ojSf1WZ85HU/0iFYMQv4oA+3sFa+rWVPDldiUx3kwpb64mh5xMLoFZU8LrIt
         u1+dW3iIC0SvBzhv7vLOqIPX1yS+yvVKzcuFfFeF04/7xk8vv5BMnS8HJbxglDcpP1Qq
         l3TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=gddfo5PT505Kc9mbzCtTcM14M1NwX7mIAjUILhIeLH8=;
        b=PklVac9gM9/YxFP5FgmzjhsIHQJbmZNwJt7lZWEUs3Vv7eaLzR2sXYUjZUNJOaoP+0
         rEBLTMjbP/qcT289F6IRc9DO7ACuNFWs3WQ16AHuGNvronl45zwdOxRuDNXFo/PqLfzZ
         fnJ3k7NIZ+fnW7NuNQ+cOZ51b/w3Evom040OVXiSk71TxKob/mP+fbHWvwhMUoE/Uy2w
         xubd/uHVwtoOx9MSvK6cgA/pO4PViYGq+QgQBMuvQeRLLekzEfafZ+qYtLWzp4GcVCYV
         tppoixWh2duXNkMNJU7aj8E3RtnpwMf3bFIJ+nITYUnJFZfziFI/BZre7zauM3+9Mrtm
         nP+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id m18si138114qtn.5.2020.03.11.11.47.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 11:47:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s0106ac1f6bb1ecac.cg.shawcable.net ([70.73.163.230] helo=[192.168.11.155])
	by ale.deltatee.com with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <logang@deltatee.com>)
	id 1jC6O6-0006LQ-9P; Wed, 11 Mar 2020 12:47:27 -0600
To: "Nath, Arindam" <Arindam.Nath@amd.com>, "Mehta, Sanju"
 <Sanju.Mehta@amd.com>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
 "dave.jiang@intel.com" <dave.jiang@intel.com>,
 "allenbh@gmail.com" <allenbh@gmail.com>,
 "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>
Cc: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1583873694-19151-1-git-send-email-sanju.mehta@amd.com>
 <1583873694-19151-3-git-send-email-sanju.mehta@amd.com>
 <3c350277-8fe6-04b2-673e-7d4c8fb6ce24@deltatee.com>
 <MN2PR12MB3232AD3D784F07645D7115609CFC0@MN2PR12MB3232.namprd12.prod.outlook.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <214f3ef3-853d-6b0d-0fed-5bb6c1f1de1f@deltatee.com>
Date: Wed, 11 Mar 2020 12:47:23 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <MN2PR12MB3232AD3D784F07645D7115609CFC0@MN2PR12MB3232.namprd12.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 70.73.163.230
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com, Shyam-sundar.S-k@amd.com, allenbh@gmail.com, dave.jiang@intel.com, jdmason@kudzu.us, Sanju.Mehta@amd.com, Arindam.Nath@amd.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,SURBL_BLOCKED,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
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



On 2020-03-11 12:11 p.m., Nath, Arindam wrote:
>> -----Original Message-----
>> From: Logan Gunthorpe <logang@deltatee.com>
>> Sent: Wednesday, March 11, 2020 03:01
>> To: Mehta, Sanju <Sanju.Mehta@amd.com>; jdmason@kudzu.us;
>> dave.jiang@intel.com; allenbh@gmail.com; Nath, Arindam
>> <Arindam.Nath@amd.com>; S-k, Shyam-sundar <Shyam-sundar.S-
>> k@amd.com>
>> Cc: linux-ntb@googlegroups.com; linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH v2 2/5] ntb_perf: send command in response to EAGAIN
>>
>>
>>
>> On 2020-03-10 2:54 p.m., Sanjay R Mehta wrote:
>>> From: Arindam Nath <arindam.nath@amd.com>
>>>
>>> perf_spad_cmd_send() and perf_msg_cmd_send() return
>>> -EAGAIN after trying to send commands for a maximum
>>> of MSG_TRIES re-tries. But currently there is no
>>> handling for this error. These functions are invoked
>>> from perf_service_work() through function pointers,
>>> so rather than simply call these functions is not
>>> enough. We need to make sure to invoke them again in
>>> case of -EAGAIN. Since peer status bits were cleared
>>> before calling these functions, we set the same status
>>> bits before queueing the work again for later invocation.
>>> This way we simply won't go ahead and initialize the
>>> XLAT registers wrongfully in case sending the very first
>>> command itself fails.
>>
>> So what happens if there's an actual non-recoverable error that causes
>> perf_msg_cmd_send() to fail? Are you proposing it just requeues high
>> priority work forever?
> 
> The intent of the patch is to handle -EAGAIN, since the error code is
> an indication that we need to try again later. Currently there is a very
> small time frame during which ntb_perf should be loaded on both sides
> (primary and secondary) to have XLAT registers configured correctly.
> Failing that the code will still fall through without properly initializing the
> XLAT registers and there is no indication of that either until we have
> actually tried to perform 'echo 0 > /sys/kernel/debug/.../run'.
> 
> With the changes proposed in this patch, we do not have to depend
> on whether the drivers at both ends are loaded within a fixed time
> duration. So we can simply load the driver at one side, and at a later
> time load the driver on the other, and still the XLAT registers would
> be set up correctly.
> 
> Looking at perf_spad_cmd_send() and perf_msg_cmd_send(), if the
> concern is that ntb_peer_spad_read()/ntb_msg_read_sts() fail because
> of some non-recoverable error and we still schedule a high priority
> work, that is a valid concern. But isn't it still better than simply falling
> through and initializing XLAT register with incorrect values?

I don't think it's ever acceptable to get into an infinite loop.
Especially when you're running on the system's high priority work queue...

At the very least schedule a delayed work item to try again in some
number of seconds or something. Essentially just have more retires,
perhaps with longer delays in between.

Falling through and continuing with the wrong values is certainly wrong.
I didn't notice that. If an error occurs, it shouldn't continue, it
should print an error to dmesg and stop.

> 
>>
>> I never really reviewed this stuff properly but it looks like it has a
>> bunch of problems. Using the high priority work queue for some low
>> priority setup work seems wrong, at the very least. The spad and msg
>> send loops also look like they have a bunch of inter-host race condition
>> problems as well. Yikes.
> 
> I am not very sure what the design considerations were when having
> a high priority work queue, but perhaps we can all have a discussion
> on this.

I'd change it. Seems completely wrong to me.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/214f3ef3-853d-6b0d-0fed-5bb6c1f1de1f%40deltatee.com.
