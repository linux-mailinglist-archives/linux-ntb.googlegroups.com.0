Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBX73ULTAKGQEAHX5HPA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 571D4101CC
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Apr 2019 23:28:01 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id t12sf12463406ioc.19
        for <lists+linux-ntb@lfdr.de>; Tue, 30 Apr 2019 14:28:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556659680; cv=pass;
        d=google.com; s=arc-20160816;
        b=f/D/tlSrvG/bRayakLMNup7UB4YB4WesHXiy2jm5ICA7SSnSH2x5hAFzcxO6JCyLSu
         /c2hxVnbwioMbHLrToHjoHzD8hF0w1ZPUeWDfLdNVXAqWzs+t1eVLI0Tj4TW9SsBXIiu
         fQgr8rQS1QFJvi+VEMFsKcyhsoasVgoskk3S3mS7pmal5jkKGFf4xl3yF78EdUppb1oB
         95SMko6ugr3eOZbkUIGr4IG45YvBBJrA2vGhvyNPiayo8Xkv4c2KQPcr6UjpCADex4JX
         I6wuP0Eu02fPltaRO5SwjMQft7BkyprW0GiIKWR+Shi639+hDXHC2fHEkC9l+1/1495O
         mLsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=mMT69F6Su+Sg6nNORF5FSPDewO2Obf6Cu2XiBY4IcEU=;
        b=aVgyuF4Y2pNdrLOOrZjiD4nG04C9iSP6rpNYrdpwhuJ6o+As3Ofz62sRMB06P3Whfd
         tDuaoJJd2lIMte2F6j8+hZqvm/CL6YTHCro6Rwkdm5TiOp1DG2Ry53VOfQOnrYKoe9mv
         ta9iPetM5xg3SYzTn8Ox4Pumngq/DpPHYqaF1OGSRJOmTEQXjpUEHbf2kfZYmAoFu1Qm
         DzS94xYa0v/FolTObBZNE4KA7aKG44Mxz0Rrkf4iq6hg6yPuuNSbG3EQvbwJIqAeMQe3
         AdT9+5udMXwU5AcXnLYjU1MAmjrv4XPj0ouwTv4QEukFKjVMMkIRNXrDK7NruuWIkOlH
         1Ynw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mMT69F6Su+Sg6nNORF5FSPDewO2Obf6Cu2XiBY4IcEU=;
        b=jdzbA8yjla9dxts0rFCStx/Wr6W+oqRPQcqPFZUfnMs4dtq2rM++gneQHerK3WbwLy
         EMi3otpkJVii/p+PEVitfO301XUcyTVqef6eopbrM45e0PEnan+XE8IXN1Xlq4th099x
         Z5CEFXHQrkzTgmNSkL5MtnN++sX0nM9kT+MHbPWiriGXxKbajqvvRz1tB1HaBDBxkpTP
         MGnhDV7r6jYGavHVXMZs17f8ZlsZQfkMWWVHzdxPCrqyblJQZe/8f6kw4FuH2TnZ64jX
         FEFPPnKKNqZDf7hOI/6QMriOywyENTMuT2x9swwUiMCy6NvjAAw2GvyJXH2bKBgN+dHp
         009Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mMT69F6Su+Sg6nNORF5FSPDewO2Obf6Cu2XiBY4IcEU=;
        b=SCa9QpynsktDKv2BIL704MnAy/N1VhWsIUeXjkKOYIuFqAHehHLYZRafgbuDF79it+
         74fnJItH8gvTJCkuOWs6bFEWcF3NbNiqjXEkAFNI8kryZ00r95UZLj3lzmquTmTghukV
         J3xObQqYToQlHYK9obBLNUdhh/IdBWGK5UDF/BpChvr1osCI6Hq9t5C+CWHc0KE1VS+l
         TUT2JQKOAPlkQOt5hzw+r0UJN1m+tu4StrSzdZHxAl/O7gAi6u4kCO/ICevFEQ6YsVP+
         1/WeDmfpmHWFn9D0VxHkSLB4OY+rpEP4YTydyys4qBlOMUB7NelJ6rK62qRMWAI0qGdO
         hkng==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVye9wUNCYcgFtiYfzgMa042+QXOTqocVR4XSAKPFn48j55llxy
	sQt9VLJyX/9EvDxod93D20s=
X-Google-Smtp-Source: APXvYqx6fbsXut3faLIR1qxfwWaiSCavvXlZvrALoHalcw4ok/TBgP/wI83UitMIKNkOnFUxBCHmSw==
X-Received: by 2002:a24:58c:: with SMTP id 134mr5286076itl.103.1556659679838;
        Tue, 30 Apr 2019 14:27:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a24:47d0:: with SMTP id t199ls1310006itb.4.canary-gmail;
 Tue, 30 Apr 2019 14:27:59 -0700 (PDT)
X-Received: by 2002:a24:89c3:: with SMTP id s186mr5379667itd.112.1556659679467;
        Tue, 30 Apr 2019 14:27:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556659679; cv=none;
        d=google.com; s=arc-20160816;
        b=pt6oPurRdi0FxF9i3t9S58qAa4x9wjeZEeuOXaGJG0K2GU25zWEs3Zx8xX8XNaRvQj
         N9OMiS/P7Z9N/WkK8i4NI1QujYjH1K6hp1gikiq4lV0t196cPVY+YVhnPqz1P1tu113A
         ISPT6OcV1svRNd/OmTXPmnk4kOt5QLFP8R3AC38eUOrA+1pA5WgJKYnKCY487E4dwi8p
         afKZkfuKPpWFscHUTH7D9v3RQrmp+bRETq9Mnw0Vwthm7Y9x9Zk5IBYnKXJEpNniEmjv
         prPmrK9PXIwJtwyfq9GU7rnHTc8aXlc2ovIvFv6dTLe9vdud5m3WlEfmkyv69C4PauS3
         SZMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=NHbInbPK+ySoZqY7SAMbCB23XYI3m85xtTs3A75gGrM=;
        b=HWsYdi3RBiikw0quL5gPG8niK+k1cSAcn5R/D+Ye6f+Spuo11IxdUNYe4JcBgiXwV1
         qsvBMnwbRdL/nuV+dtgirORDQF7qQFU37EJpYHwH1nY22jpqaJpt5LUo4IxFOE4Hfa1b
         MHwR2lYqCniSGnpQHs3w2gTJk7TrzIoGGCw3E1oE0oqdwLhU4DQneP4oTbgyalvAJp4Z
         Dlys/G0OGo68D118yaIfW88VaOfyXFZHCSNdjMhVjtHlQB6dCykSIpdhgNykUe4SHooM
         BtXLE7wSrT8S171TTH1NtLusgjNK75qlXjTxOX5KuAIuIle04EsryXdLYnWn+evg9wUi
         komw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id i10si1742896ioi.5.2019.04.30.14.27.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 30 Apr 2019 14:27:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=[172.20.5.36])
	by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1hLaI8-00075l-Am; Tue, 30 Apr 2019 15:27:57 -0600
To: Eric Pilmore <epilmore@gigaio.com>, linux-ntb
 <linux-ntb@googlegroups.com>, linux-pci@vger.kernel.org
Cc: Armen Baloyan <abaloyan@gigaio.com>, D Meyer <dmeyer@gigaio.com>,
 S Taylor <staylor@gigaio.com>
References: <CAOQPn8vMn4h=oGWWKa3Uge7WYMkmRAmTyhR6RPjGVtrR1hfhOQ@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <4389bccb-6993-4a86-b4e4-202e971e2080@deltatee.com>
Date: Tue, 30 Apr 2019 15:27:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAOQPn8vMn4h=oGWWKa3Uge7WYMkmRAmTyhR6RPjGVtrR1hfhOQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 173.228.226.134
X-SA-Exim-Rcpt-To: staylor@gigaio.com, dmeyer@gigaio.com, abaloyan@gigaio.com, linux-pci@vger.kernel.org, linux-ntb@googlegroups.com, epilmore@gigaio.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: NVMe peer2peer TLPs over NTB getting split
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



On 2019-04-24 4:46 p.m., Eric Pilmore wrote:
> Hi Folks,
> 
> Does anybody know why a Host Bridge might break up a full-sized (max
> payload) TLP into single byte TLPs when those TLPs are traveling from
> peer-to-peer?

Host bridges can't be relied on to do the right thing with respect to
P2P. This is why the p2pdma code explicitly rejects them. Bad
performance is often the symptom and splitting may be the cause (I've
never bothered to stick an analyzer on it. There are patches floating
around to add a whitelist to p2pdma which would be what you'd want to do
and avoid anything that doesn't go through a switch.

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/4389bccb-6993-4a86-b4e4-202e971e2080%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
