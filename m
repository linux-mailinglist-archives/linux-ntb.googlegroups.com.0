Return-Path: <linux-ntb+bncBDIPVEX3QUMRBSVPWL4AKGQEC5MOOFQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 357F221DE5C
	for <lists+linux-ntb@lfdr.de>; Mon, 13 Jul 2020 19:20:12 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id t12sf7820231qvw.5
        for <lists+linux-ntb@lfdr.de>; Mon, 13 Jul 2020 10:20:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594660811; cv=pass;
        d=google.com; s=arc-20160816;
        b=U3HBAA9DF2fZOqRGx6FG1bcj4jatw/TR9uc5HZGhJd/Rs1NdXP5u/nSCueCQDYQyxH
         tTpQvVNKx4wAMIstkwN2Md3xQb5lNl54og9KTLUSPVmFRrDC87jXoOINXsuKIsa2rkOS
         mabpT4xh5yiDoZFfr2/kTm650n3vATcZuVq2/NZ96Nme0JzAcCmJ2tNiPsmdCofG2o/N
         PFHWgDXJHuyY6b1oDmO2QWhklX2UtL2gv//CkCOBOGN9fcqdVUg/BBVzN9YUGiekRq7S
         JdF0Mnhtn7Yp+Bwq/qiotndu049YAQhAsJ+0QD0obWnVjLQJyU6sE45RXQE/xXABN6a1
         45pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aTU5ItQSY5WhJkKZikUKgBozT4Y1V8O8hqdCaAFBPqY=;
        b=fi8pUIDdc8uyBtowtF/plermbQyWZk7gOpn1H4q+NPZLBNdwp1vhC/Bgr/0x8sw1sc
         YRBpBAuEV9bwjnlZI1WXiwdhjTd4trEworsBqMW+RZ5Sf260vBDyKhe40SD5KtuPcCcf
         pKG3/0O98BM0TgLyuqcOPVhF9GJ0zHmrFW3pPdebHDtuAOWdf27765uprpxMRWfSzGdZ
         sgIQ1ovTCW4HzznxKLw3a7lrSxf6cF5t3Yzg9ztPk55W5XymJD4JPfn4mMclqKNV6ZMp
         OkYltCUcvBBXH5xM8aclcze48b/xmn6N5Sos6Fg55KJSJr1ziiOUsS0LKWEtwmNeNSpQ
         DUiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aTU5ItQSY5WhJkKZikUKgBozT4Y1V8O8hqdCaAFBPqY=;
        b=F/KIDt/K7e77l7l0eAu32C5SVCoPVP14cNzcJkOqiIeF3D4a/olgz4cTWKJQHVJnUq
         uvdcLot7ud8zNf6sI3E4uMsYVKbcaYcd/cQxgMpVw9tHDzd0m8CqTWL0ODLQct6SIGwB
         TqQjM8WjEzKg94r8ZWVdLSN+ekUV5kKkyzx0Xb69a8ZXxIN1WXRqugSdJTGNJulyofog
         GWzvjRTgV23DB5XKtZwiGT1Wark8HhZN/cIe30uOZKEBwBTTqkPWm0A5t/FUPeTFihft
         k97M59iIX/5z+kz0pgWBhHkH+qN1YmBaKgBsnK1lfuVHJyiJfbXwTDp4aXUQuM3OO8Zw
         rE7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTU5ItQSY5WhJkKZikUKgBozT4Y1V8O8hqdCaAFBPqY=;
        b=lF4YEK0bbMrbu2g4k1Kghat/dCvXBGaVzjl0QNwIw8DgWfgS8GOOjPjJc8zMsy7aOR
         gDu8C6rguftb8R0CLSsXQqkvFAWyNxLtH33Jj3V17XgvrCIBMkLZfXK4yH7HspHylLFe
         He3wVt24TtyOddO3e9gilA/ckrHPoVpGwbDvLiSfwFFpxW9WHUuPKxwkLmcx/4zyn/pN
         dmQNY+Qmfw9Gi5+eZbGL7X22zCeTSABlbbP4bGA8bwUUqE/5iW+FZAw1YdZ0MQH2+SIa
         ivZwFBJfd6y8xLQOKEpOQZXel4b6RT/X2CUXKADfloKANvThxqVuE5dUWN6y22tHClyQ
         XuWQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533gd1Z5XZNVyRaFgl9bUmzEivsnuhRk67oyqpJW9VqWRlQJNehC
	u6Shcz+pSGjFge7LC+fxe2Y=
X-Google-Smtp-Source: ABdhPJzBjFM9rowBkU3Ry/HPB1XP9zgadWJMCfG+jWinq5wkjUV7VZqaDc3pGopLsPJLoUmQgdz2og==
X-Received: by 2002:a37:a196:: with SMTP id k144mr650842qke.329.1594660811045;
        Mon, 13 Jul 2020 10:20:11 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:1ac1:: with SMTP id h1ls6810677qtk.4.gmail; Mon, 13 Jul
 2020 10:20:10 -0700 (PDT)
X-Received: by 2002:aed:22ef:: with SMTP id q44mr311072qtc.333.1594660810666;
        Mon, 13 Jul 2020 10:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594660810; cv=none;
        d=google.com; s=arc-20160816;
        b=WAywfuP+6yZTDofo4WjHyUYgoSII9sLVI8SUiHOdVqt0Ee+kiZRBreI7dsoEn5NNqr
         o3/5iIyVKX0oVJh14AzolsYqLOLVhNoeLnuFqlTfFjQ1BNqA2jhNhrrzIcZLjT0HRZRq
         CKlsm0/58zSekqXBKP73ylcaRWq0Mo4i9Sd5S8LXBd17QuYs34W/RRUsxBn3XXPO4t37
         LkR2edm8KKLLSWuDJzOxf9gpp4N1+dclImWlNPabJntNSzcuv48Hpv8xjvWGgyAV13Wk
         S+DzDPhqtj22XruxBdPRJ1ApZpZVlEy7+5cS/rgQN1O9f3ARaBwQks3hwOfbkAUm4KRo
         N+4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=pFNCbPBQXxIxJMz+Xyd61w9ximYGLI6B9Bs+IgXLNlI=;
        b=ZhSIOKrmHESFWCzI0Rl/T8n1lOKbrGDOoh/1ucJNGlD4Ct69D0K/eRpCQTkcZTUdZv
         kqLvqo6WD2m+ouM+r8l7UFUTndRF5nbLQudJe4PGE6CyZyfKVKvz9ZgRpFTz6D1qvh0j
         qM8J9S45vnEaibAcuMEUrJFL9JJ+TOsHqpE2an1wAufUbwxgj+dFs5+85iJBhjY2SNXL
         iQAi6C62TDUiy9mrWD9GBlBeeX/OzlVrawWfZnqWf02ngQ5XWz6BkhsIwo0hw4/8OqUf
         FmQQqfVDkx9ojadQ1HRnPlhk8UBMXTdh8KA2ZRrHBwuKkUmuy0wnSoK/H4kpHXOMtBv+
         fv8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) smtp.mailfrom=corbet@lwn.net
Received: from ms.lwn.net (ms.lwn.net. [45.79.88.28])
        by gmr-mx.google.com with ESMTPS id q22si721942qtp.0.2020.07.13.10.20.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Jul 2020 10:20:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted sender) client-ip=45.79.88.28;
Received: from lwn.net (localhost [127.0.0.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ms.lwn.net (Postfix) with ESMTPSA id 4E32760C;
	Mon, 13 Jul 2020 17:20:08 +0000 (UTC)
Date: Mon, 13 Jul 2020 11:20:07 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, Vinod Koul
 <vkoul@kernel.org>, dmaengine@vger.kernel.org, Luis Chamberlain
 <mcgrof@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-iio@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen
 Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, Dan Williams
 <dan.j.williams@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, Ira
 Weiny <ira.weiny@intel.com>, linux-nvdimm@lists.01.org,
 linux-usb@vger.kernel.org, Eli Billauer <eli.billauer@gmail.com>
Subject: Re: [PATCH 00/17] Documentation/driver-api: eliminate duplicated
 words
Message-ID: <20200713112007.4a7597ca@lwn.net>
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
Organization: LWN.net
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: corbet@lwn.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of corbet@lwn.net designates 45.79.88.28 as permitted
 sender) smtp.mailfrom=corbet@lwn.net
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

On Fri,  3 Jul 2020 20:44:45 -0700
Randy Dunlap <rdunlap@infradead.org> wrote:

> Remove occurrences of duplicated words in Documentation/driver-api/.

So most of these, it seems, have been picked up elsewhere.  I grabbed #12
and #13; all that's left is the media ones, which I presume Mauro will
take.

Thanks,

jon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200713112007.4a7597ca%40lwn.net.
