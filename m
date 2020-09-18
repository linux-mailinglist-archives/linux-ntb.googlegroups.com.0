Return-Path: <linux-ntb+bncBDV2D5O34IDRBFV2SP5QKGQECOI66VY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E115F2701D6
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 18:15:18 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id b17sf2225233lji.10
        for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 09:15:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600445718; cv=pass;
        d=google.com; s=arc-20160816;
        b=DZR0BuTq/s0ImZ54Rp14tZlRyGyqz889V7xlTvtrpUA9SfaKPCaAkIGd+Le85AkHnb
         PoUGlov3wrAjldLCWIPI4And0z1dybuNRjMRE22HLknbt2zd10MyzxqczBXaXi4Dhp22
         Sbl3DK8xk3gM7V2U6QlQS8mktQz9QzJH/in0pXXZS7yK+GDATpDOj9iwn7tOSEx+C8DM
         XK1WDzqbGsv0n/DUUMeUgSwEBKMi6NKPDWd377BDfjXEBK/hfeqxjH4nQ+dyS2m9qbcZ
         8PHrRCOmuhF7v7+5W8qvF6DkxbvTjx+JKY3O9NePUE1LIPRTVNr3Q7HiqAntq8gq3JBL
         Pf9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5b6S/Swwebqs0aEEtm2lk2/Fwk6jG3CoWa4/fwEsCNE=;
        b=Q/ojvvLv1L27cnw2Jlk3cQwZ8pTnu/GlvTV68eyMSxX0P/rmWZg9YgWbzR8vkuxCwJ
         Skq/EF81onNG1oDAt+wcHk7AZIOD06dZqSc3x1/otGzz1wJnX1ExjthdilmsHUjqoAru
         Bihp8WFmeqLC+REdrOrtAGhsFRJ1LCWg8O7xEU4dbBaW/kSLnmj2me4+PGT10zC3jPl7
         2Obu7kQbwT8bOaMCs3jLeDKZje1F6OtLHMxiV7hSv4bKnlY52GjA3fbKY9BguE6biqzs
         KH50WsQpFiAfZVUGo/R1YYRNW2Q3QTzMp0td+t2nm4pDt6rvGi5y7sB6E2r+WAoU9Ypu
         jSdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=rcxE1zOO;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5b6S/Swwebqs0aEEtm2lk2/Fwk6jG3CoWa4/fwEsCNE=;
        b=ib2FZi2kotwu8mbWkacQ9omMQCRj1uhNxary0UIKFx9nN6WsCviad5XQe8QQavD/cJ
         UsVMUKi2ulniaekYT4CQY6k49gSFB9CW9uIDjWjBWxqAatXHBYcsg0S/hb19cGdUVeyb
         q8XtweeGAOd6D84Px8TdGOV9NX4yKFI+yWqki+t3HIuuklroIL2J5wCA0ezU7PMpoXHc
         lA7IXSxfJArmjENtwFJsqcd0V+wxeVkrrnP1iYhNa2Q44QH5l3J6C8FnGC6+90/yP8Ff
         QGdincNjLWU8OYYG+FFg1DK9/cDnIrPr0CkIg6N8iUsmL8O7y/Dz+5J89GJV/IYF5IEt
         aq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5b6S/Swwebqs0aEEtm2lk2/Fwk6jG3CoWa4/fwEsCNE=;
        b=OaXpXuiriYj/MAqlZwgDhEPGosJ1t7JeAgnSRZqbD7EY53zMXm/XrMhsU8nxFUuzFJ
         5REWWj9/CVt6VPfRJ/oeLmXmQyMIlLctbSg2HMOidcKxXmIdl+4mLNzNHN2U1UIMYjXI
         shFo7mOwq3eSITLakvwrv5j6xpnTDoc+8CXb/ft9Y3UxGrNr/DpOiRyWv2cYnoH9bCTD
         3+RsqORruv11OhNnrtWSkk1rbbFhLdBiWswIzYSr1D8fvqwAk1jT8bb4syTFl8IeV6qa
         zJQhJv9inNP5gAcf6WxrqIiVgV4ZFc1X7vbfd6VvOUNnFHMb1Atu2hrPizqfGa8NaWML
         msEQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530b+CM0q+0yJX5fHm3HX+Tcw6o+AzRb6fhyBeeceH2MzBCMbr1f
	pYyB4ub/8iIUw4RZeMerFJM=
X-Google-Smtp-Source: ABdhPJwo6D7vpo2iGWLfdxnzhk9ENz0OgPkawKEguJkcNyKJ+cY6CU/ygTDHuOn8cz1t9YZi/3v3Ug==
X-Received: by 2002:a05:651c:1397:: with SMTP id k23mr13353624ljb.263.1600445718476;
        Fri, 18 Sep 2020 09:15:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9ed2:: with SMTP id h18ls919508ljk.0.gmail; Fri, 18 Sep
 2020 09:15:17 -0700 (PDT)
X-Received: by 2002:a2e:86d3:: with SMTP id n19mr12905721ljj.368.1600445717281;
        Fri, 18 Sep 2020 09:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600445717; cv=none;
        d=google.com; s=arc-20160816;
        b=ePzzFusMkXHklzi34rhtTjldYhJq4hi1bpBl9enycmzPYdkBemlr6+kszR1E9j0gBC
         KmTgm/p4YPB3ZkZXQqa3rMQMsIk3wIdulnTX07b5L+aUYZ907u3ULnBzKtckcfDHP8NE
         hGIJzQAaCFdjR2dwrCRy2V1MEO5g1A8R7K0O5zgvHCFmtBqdiJntwvSgUpNewWPb2PLt
         9JdIvrQ6Szv2XiqrECPYh53e2jWY7uo/COF1Gh5ufxTObNJQtLJVHKN0fgqDeYvgSaHK
         j3mLB1j8PTGdd6ZWrQjctWjsV/PF6ffdG1lBeP+/ABZmqtsMG27qvev9LvrvItZCEuB9
         ciPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=67/LJuN1v7jqK9yEQqm5kjJLGJHidKzcy2YeicH9l8s=;
        b=d3MsUlt+XOdWzINYkFZrTaE09Ff9X1VQ+RDoxtoNNAVzSjcY3tLHeMPKnRkJqHPkWt
         2w27JJgXNtUhbWL4oXuudGrUZQRS0UjE8p0+009Q0R9L22kSw3R45jx7ejfYoFpx4Lio
         +IdCk114zlOZgJgRY3h/IYW6OZuodcD/4mPI5KrjDkgnldqVVkG+9u9iL1g+974ILjPz
         k6UtJCL1W9lExXv6bP+eW2hG6VNUK4HmD9PltB6cCBXZqSO+Sg+JeQtKYKIFKzSjsE/Y
         /Mv5/dcc8l8i4dxCpAEsha9vbW+tVY6VRvham9pR5h/D9abFL4jISXntFFKYdzaLwvVM
         geew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=rcxE1zOO;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b5si88915lfa.0.2020.09.18.09.15.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 09:15:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kJJ2R-0005Gj-Nl; Fri, 18 Sep 2020 16:15:07 +0000
Subject: Re: [PATCH v5 14/17] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann
 <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
References: <20200918064227.1463-1-kishon@ti.com>
 <20200918064227.1463-15-kishon@ti.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <93b651aa-23e5-9249-6b22-fef65806b007@infradead.org>
Date: Fri, 18 Sep 2020 09:15:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200918064227.1463-15-kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=rcxE1zOO;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 9/17/20 11:42 PM, Kishon Vijay Abraham I wrote:
> diff --git a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig
> new file mode 100644
> index 000000000000..6197d1aab344
> --- /dev/null
> +++ b/drivers/ntb/hw/epf/Kconfig
> @@ -0,0 +1,6 @@
> +config NTB_EPF
> +	tristate "Generic EPF Non-Transparent Bridge support"
> +	depends on m
> +	help
> +	  This driver supports EPF NTB on configurable endpoint.
> +	  If unsure, say N.

Hi,
Why is this driver restricted to 'm' (loadable module)?
I.e., it cannot be builtin.

thanks.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/93b651aa-23e5-9249-6b22-fef65806b007%40infradead.org.
