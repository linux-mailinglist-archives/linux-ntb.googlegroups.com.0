Return-Path: <linux-ntb+bncBD3NBC7Z7QMBB2UPR6HAMGQEQOP3OOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5219447DC5B
	for <lists+linux-ntb@lfdr.de>; Thu, 23 Dec 2021 01:50:52 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id i11-20020acaea0b000000b002c6ef0ca85asf637973oih.19
        for <lists+linux-ntb@lfdr.de>; Wed, 22 Dec 2021 16:50:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640220651; cv=pass;
        d=google.com; s=arc-20160816;
        b=qA8VdFKmxRAOe3N+CAy/ntn3b4j0i2FQ3tHgDvcdEixOPQE8UgzM0dDRAfvJXppRjz
         n5AvFWMNtBs6RK7BEhJXChJ0cMCY8ak5DlpIkiIbFVHnbMpiSRkUAYiXf34IOccUUsl6
         4pmHbD45CUjl0zkrNnwZAgstJ7Hmk0qbX2vTAVcUIWdmA6mPvDV+hcnJLEAFbo8smxrJ
         fcvaA9Mn9TU7nNoAcBP8EFEhqDuXwJZg6kppQwg61GSRYUAMgjUCe2WySXfhATpyXWR9
         W/ofSTy8JXgGpQkCMNLhZoYooklN5Nf35hDtjn+Nl7fNuWPFknBHKnqKqPLf4wZ6MJqp
         tXzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=tKsfPq8/ndZJv2FTxiXYvhFPxQ1FGIHqeOdDTwyJhA4=;
        b=yI3nf8EcfyHBkIKK1XC+nj0HW1IJGC5jyGwRj8I/Ogfe2UsQC644tju1MZCCCd4DX9
         RsSFTjwpJUy2pw+TkI6uTHkYiWBdtza+etzxe9YUWJWzlsQSrZgUfAhe1YPOYyVXse/9
         DR/FkO7tTXaokJbJtyo4rCxK+GGZ+hkrTYvHtMmIueN3t5+TcaVC6QesizraMlTk+27H
         jDoinst3pdHr3Ud220ArGP+gXUkvJ9BlVNSSSjsqHLNaTGH9OBOXTS5/YXr1VGG+3O/j
         PRm9attW3S3GdJ6KuoyEFuNCvb135pc1CJNGP7hktrjnAJTJ+pm5klwjuCotFzG0K4gb
         nz1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=pjGmoQ3K;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tKsfPq8/ndZJv2FTxiXYvhFPxQ1FGIHqeOdDTwyJhA4=;
        b=pnFrJwbreeJ/1jFoH4FzYL/nEleZPiiFeong5nIyI8+RyY4L5PoDutIYWXs1XhFmx6
         cPbief+Y5lmATj+SuwoJVEGvIRCMmKcEI8jBodNFBO3xf/ixyPeN9J4nnty6KOeeciqA
         kThUuaJ1lo5JY+w9Hfp8TY2xn0zVb+rXjIkXtT+rAMWeIRnZ4/oyc2xp9YAM06vGocSV
         9FJQM7P0LziHm4BWCrJVoJMmDeD/USKqmeFs9lan3ocEEVp/nNltwjliouS4RcvvzhDO
         VxS5RLG3PDp4Mo/iWPQMmcjmA3t59VFnSkyzbZ0oVpO4XSP+bqWXuY9UWPIM+gYVyTLn
         e9uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tKsfPq8/ndZJv2FTxiXYvhFPxQ1FGIHqeOdDTwyJhA4=;
        b=sCGq5jVE0aueNVh5o6ZPuXzMsH0MRU2ubPYmoSyQ9rdM16m06Z0Yq2f7PHBjvt4JBi
         o8acBRVNu2RRj2amAFwOpwBecdq9YjLvdGWb3mIO9vkTg6lBZwFJ/I0ByT8KHBj6p8Mm
         0CjPrHaw3T7EhxTSuoe9wm6PhSyJBrCYM0QqUAi7HYpVKci07oeTU3l+Y7ks+PZO73w+
         G6Y0dCDBmnGO/7G3pnXMiHFNLtjUrXIPAf8baHO6+q0LV6vpJr48GWlYpuetV4FZlC8j
         Rki3pwKu5B6wK4xRAWBMww1I3JzCAVmRkPuevCDmtKKj7PacfLGT++1I3gYHfXch+c1X
         psBg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531I6I13uuNVpCzAel6TTc/AbxngfglSP1C6b8/3wClL+2kFZDF4
	vuHNtk2Xy8ztJ7ODHjTI788=
X-Google-Smtp-Source: ABdhPJwZnrFpCdqTYYfEGbjoRdNTPI0/XkYugitidKJjZPcDOaBIxgZjxepQ6vc57yroRa5Q/7fr1A==
X-Received: by 2002:aca:ea88:: with SMTP id i130mr70267oih.140.1640220651035;
        Wed, 22 Dec 2021 16:50:51 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:440b:: with SMTP id q11ls790150otv.0.gmail; Wed, 22
 Dec 2021 16:50:50 -0800 (PST)
X-Received: by 2002:a05:6830:232e:: with SMTP id q14mr16912otg.133.1640220650693;
        Wed, 22 Dec 2021 16:50:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640220650; cv=none;
        d=google.com; s=arc-20160816;
        b=NAVDRCTnOoK1aD92WUclipMfaeqQpMW0B3dyRAN45y3XEUENzZoqx03X3RqwBJK6VF
         tAeJ7murlauKv9wqXgHZYeHPPZCfqvkJo5BHVRRwsMsyUBBqs20eMsakfFySHlPVAEzV
         LthZnxK05E3bFQqHbKU+zz/YhY8J5NdS5s8eAlxUy2neIbTOF33PKggtVvgvckxhqWaP
         SKQkulOZ1O9tRWdAJ216eZ3Zi/Ia9P4AF4D6SnaOg1XRukVsD+KRXSsYzoxYw7hwrU1b
         fg/ICWlL19+zQEG0+Nzg0i0BghNsfSphrkbcRfY6wfrClh9W4X1ns4cBMf59w/6ZfrqB
         Ltbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :dkim-signature;
        bh=2dF1CFJJey1d0BzeLcah2Hg/8NGRiEzQ3KICdfa8L5Q=;
        b=v3T3d76g+z4NQsVX8TFKdacxLQDYN869NjBrjzTxd/XsXAkbTcuJvqMb1i4He1ax+q
         lN800OczzCriu4KVJN5BMRksOAyh6FXYrLkwfO+ymR+cfJXR5GqCcjGS5LnHzG3UxII4
         tFXeQ8DcuCey2ObjouTaUM0NGFhGheDMNQjTxyLFhgHdVfnNQSlrFUikYHNklohu+9Ue
         SbDODLDGkkBwvknL9NvoIw2xosqxUPJ/GH4H4TLalmmPY8ob2W9T+UqRj/wt49yb+jnM
         yiRF6ydu3pA7SW1s/TsK/zPMfUlaBz59cZo7bs6U+WH+4eWHqWU50gXSTpmZTOc+Xv4S
         VC1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@deltatee.com header.s=20200525 header.b=pjGmoQ3K;
       spf=pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) smtp.mailfrom=logang@deltatee.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [204.191.154.188])
        by gmr-mx.google.com with ESMTPS id l22si246616ooe.0.2021.12.22.16.50.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Dec 2021 16:50:49 -0800 (PST)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 204.191.154.188 as permitted sender) client-ip=204.191.154.188;
Received: from s0106a84e3fe8c3f3.cg.shawcable.net ([24.64.144.200] helo=[192.168.0.10])
	by ale.deltatee.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <logang@deltatee.com>)
	id 1n0CJj-00BQTy-FU; Wed, 22 Dec 2021 17:50:48 -0700
To: Randy Dunlap <rdunlap@infradead.org>, linux-pci@vger.kernel.org
Cc: Kurt Schwemmer <kurt.schwemmer@microsemi.com>,
 linux-ntb <linux-ntb@googlegroups.com>, "jdmason@kudzu.us" <jdmason@kudzu.us>
References: <20211223004802.18184-1-rdunlap@infradead.org>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <db287ffb-0599-6d5a-bf03-fbaad19377ba@deltatee.com>
Date: Wed, 22 Dec 2021 17:50:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211223004802.18184-1-rdunlap@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 24.64.144.200
X-SA-Exim-Rcpt-To: jdmason@kudzu.us, linux-ntb@googlegroups.com, kurt.schwemmer@microsemi.com, linux-pci@vger.kernel.org, rdunlap@infradead.org
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-7.6 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	NICE_REPLY_A autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [PATCH] ntb_hw_switchtec: fix the spelling of "its"
X-SA-Exim-Version: 4.2.1 (built Sat, 13 Feb 2021 17:57:42 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@deltatee.com header.s=20200525 header.b=pjGmoQ3K;       spf=pass
 (google.com: domain of logang@deltatee.com designates 204.191.154.188 as
 permitted sender) smtp.mailfrom=logang@deltatee.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=deltatee.com
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



On 2021-12-22 5:48 p.m., Randy Dunlap wrote:
> Use the possessive "its" instead of the contraction "it's" (it is)
> in user messages.
> 
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Kurt Schwemmer <kurt.schwemmer@microsemi.com>
> Cc: Logan Gunthorpe <logang@deltatee.com>
> 

Oh, yup, thanks!

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Though this patch should have been sent to the NTB list as changes to
that file go through there. (I've cced that list and the maintainer Jon,
but the original patch might need a resend).

Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/db287ffb-0599-6d5a-bf03-fbaad19377ba%40deltatee.com.
