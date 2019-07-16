Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBJMRWXUQKGQEEOR72QQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 619506A0F0
	for <lists+linux-ntb@lfdr.de>; Tue, 16 Jul 2019 05:46:47 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id s9sf22033265iob.11
        for <lists+linux-ntb@lfdr.de>; Mon, 15 Jul 2019 20:46:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563248806; cv=pass;
        d=google.com; s=arc-20160816;
        b=tAz775o5BwfmuBI42ljEPD1XS2s9OYaEhupNQBkWp/0M+keC9z1cipuaI4586DT/sY
         /S1DUwqsnmV6tTfTZqDEUSfUittwlyee9Y1ekctOIgzuLspzk2V956TJU0ycowsE3gDu
         MNk4dthmxQrsuBYMBNqlwyeVtQS5QP3ELTt0NlovL1gR0loGl+9CfQBV7YvNfbN4Kyfa
         wBzajYB3zNfYAUCPeW1SMvui0KvyQgdEtJghknz9xWm72SrMcE+GVPnfGIQRfsO2FR+s
         6nvZgXsShm0SH7eso+ocJh3T/iQHZw7JT0BsyWC8tRYtaZILAXwaLvlxzZRVx1OUJiD+
         nrdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:sender:dkim-signature;
        bh=Gtz70KZ3/ZMAGpq8q8eCDH6o2vbiEEPytFGwpcbg9ss=;
        b=S51IuvZUMJiwwpoeRz9x7wLGSFthBbsuPjYolT5aB5zStz6BocHODfMWGi5fQswpaV
         PftLV4RuhaGsIVxR05u2GrjXAkk2VAvpec5hWRfQyYVy94ctInkSs8OKjZAcs7wyDEUa
         PWX3X50Kq5+3ortrVGhO+vDxW2/zl4NYv1PW4tW1Ddlfe2koV1Lkx/C99A7Ah7WTCiy9
         7cidZU8033nvqdWBA1OJEWgAx+M0XwYKTc8ZCznW5EH4UzITdn5ToN/maneatxhMQXNj
         UuxZZCJK1ImPIl0smFIfIPoTSKbJItUtItDVQLyxsJVJDFUIk3IjKi5oADfTthfLv3mq
         Ecbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gtz70KZ3/ZMAGpq8q8eCDH6o2vbiEEPytFGwpcbg9ss=;
        b=jt3BZESgg4gbuZL0YMPJgIwuhj7+IH3oYD8dGXMODHkEvfyhkm+h7zjfGodCKOAu0B
         Yn6gpKh3ykZ1CowcOC7EZW7ysGSxGFbhCjanr5fXtj+lEHoP2cbHgI0/VUp6xsU34pIU
         P7OqBQOljrrgUDVjVS1XQJefFR+lxryuDbZiEE/mEYZV85MLGk22h3fxC7b8gew1yqpZ
         c10ZbPRCpRCdyfe1GBYDRKI36ciReOYlMRIiG4S3yJ53GNEdjNw8pmoTmzt+UDL8yPbx
         ZnEtImISUismbswUlKcAC2sDzccDsBE1AF1jjnDQ+s9M9Hp97W8X7ckUvDAbQ/cRbnF+
         1Jyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:subject
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Gtz70KZ3/ZMAGpq8q8eCDH6o2vbiEEPytFGwpcbg9ss=;
        b=RLui1XVdygXQz9w6yatQiYYS5Dcr4Q0PyrEw1Qw+NR4Go3OoZ97HFeBelL4Dko9Mnz
         TsVNFcy8XOcff/w4Jzx7FR8jbht5DWdun6oBmtXGlvULwPFixN9sa7tPd4nF91oxDiKE
         Kh1HJVOMtaS3YBVGhoYwLUipTtBFf+Hn8GH4ZT8hDXAbZvNuU+431feSJUEQk9gzkgpe
         S37g2FgoYsEgeRs/Gw6BZKOqGBqd2Xr7AvAUl9zsM8hrn8q+gfsS6mW89idWDwNolJY8
         zeI5KY1KUYbtrDVqCCLRVQs9+t/d22y9LmrRfoaiwBaVdc5b2AmolhTPfBTP5hWuHcZm
         Z2tA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWY0VDPZqbehVXFavgHvZ5z979DT4D2GIiylDByaqZHybbXC84b
	h8DqI11aFV+W52yshqzp1zU=
X-Google-Smtp-Source: APXvYqziqqe+pOaEXbCClVSa1inBtEPbSa2v3Lu11XhJ1p/B8KyzJ1dg2coZead/SnnvBxmjXjLqEg==
X-Received: by 2002:a02:c90d:: with SMTP id t13mr30981869jao.62.1563248806041;
        Mon, 15 Jul 2019 20:46:46 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:3119:: with SMTP id j25ls5580117ioa.13.gmail; Mon, 15
 Jul 2019 20:46:45 -0700 (PDT)
X-Received: by 2002:a5d:9acf:: with SMTP id x15mr4614938ion.190.1563248805732;
        Mon, 15 Jul 2019 20:46:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563248805; cv=none;
        d=google.com; s=arc-20160816;
        b=Y35vwPUrzd4IYMfqRK4elpi+kSqudDSyiY1eTBOqLnGewYqMU1FOVewi5B4JJqO6dx
         0DefB/xSCOYCZvTRKI8rQ3FP44lgdIVG/Xw+FbxN+h0OKHIE1D2eTW8H8ufLYf42SwOa
         8YAtvmyPg6i2iylr9tsFJ4/Zj3hEbIy3wmSDZCR4qQLyukcMsRkHQRDsa09uo7AIO55F
         kvjAlhTSifmlLhC0VmHI5Nfz64H/Nf1MTkXMqPU7KbJufOtcvyJoKHjN1j+F3BsPVuD2
         oH7tsHx3OVPre81L/kc+YiTH1knIy4/ihQ+JVVmvQdjqRa0v0rAu1KPW7aO6f9/GHMoK
         BIgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to;
        bh=NZL7WW9vzyHtl65LxQtRf1lAHY3oZiiTZABUob1NG80=;
        b=XT+x9/gYCPniJrVarUWSMCelZXda5rXXSZefNWzydxvw+xDec1IrXIo/Fv+s7iU9su
         gItYRHME6nu3wQ+LWGOuHTZQNosOFFNb6O+3FDEY31og8KsIP7oRhovU+bk1r7WjFe1m
         5JTuKuqd6ZPoFlhqeNItY5eveFGi1mq8f1h1ItbUE/O7XjJT+X3mKfkkFiu3ITd4XuI/
         L/df7OUNfASAx/MQC0LGSBdh5aZwKrXZsferQjWLyoADj59OCKbzVjdNd3cH7qmGR0l6
         ltCsq5yX53QSTC6end7FcmV4os9XU9gmgizdQu0Ebpm83YvwDi52wMQrXSyRwEHY5l4i
         1veQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=logang@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id y15si811556iof.5.2019.07.15.20.46.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 15 Jul 2019 20:46:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of logang@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from s0106602ad0811846.cg.shawcable.net ([68.147.191.165] helo=[192.168.0.12])
	by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <logang@deltatee.com>)
	id 1hnEQO-0003Ya-4P; Mon, 15 Jul 2019 21:46:45 -0600
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Jon Mason <jdmason@kudzu.us>,
 NTB Mailing List <linux-ntb@googlegroups.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20190716130341.03b02792@canb.auug.org.au>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <7ec45bb7-4e72-2415-21f7-44dadaa0fada@deltatee.com>
Date: Mon, 15 Jul 2019 21:46:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716130341.03b02792@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.191.165
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-next@vger.kernel.org, linux-ntb@googlegroups.com, jdmason@kudzu.us, yamada.masahiro@socionext.com, sfr@canb.auug.org.au
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: linux-next: build warning after merge of the ntb tree
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



On 2019-07-15 9:03 p.m., Stephen Rothwell wrote:
> Hi all,
> 
> After merging the ntb tree, today's linux-next build (x86_64 allmodconfig)
> produced this warning:
> 
> WARNING: could not open /home/sfr/next/next/drivers/ntb/ntb.c: No such file or directory
> 
> The only thing I could see that might be relevant is commit
> 
>   56dce8121e97 ("kbuild: split out *.mod out of {single,multi}-used-m rules")
> 
> and some others in the kbuild tree. Nothing has changed recently in the
> ntb tree ...
> 
> drievrs/ntb builds a module called ntb but there is no ntb.c file.
> 
> Any ideas?

I renamed the ntb.c file to core.c so we could add more files to build
ntb.ko. See [1].

Thanks,

Logan


[1]
https://lore.kernel.org/linux-iommu/20190422210528.15289-6-logang@deltatee.com/

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/7ec45bb7-4e72-2415-21f7-44dadaa0fada%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
