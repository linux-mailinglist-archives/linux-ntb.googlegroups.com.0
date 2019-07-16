Return-Path: <linux-ntb+bncBDTI55WH24IRBNORWXUQKGQECWIARNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EBE6A210
	for <lists+linux-ntb@lfdr.de>; Tue, 16 Jul 2019 08:03:34 +0200 (CEST)
Received: by mail-yw1-xc3d.google.com with SMTP id r67sf15396879ywg.7
        for <lists+linux-ntb@lfdr.de>; Mon, 15 Jul 2019 23:03:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563257013; cv=pass;
        d=google.com; s=arc-20160816;
        b=il8gwDqP3xr05mEpi5e3OB8t/2ucjku31Hgd20HISqRjifkFojMnUiCjI282we+7gR
         hy9hRidQPgyK7Z3P9GlZprpmhRiZYH+xE3YwV9SWikmUmPtNMYUBvBM1VONu2SS0KaMt
         uOjNeh9Mp19IEPXXpbCuFkanZBZnSXFh65eosd7Uk7bMviJCsNuEEP4yn6tlnPZVFhun
         If8F2sCVY+C9lLOBFeaUqoRpjmKFRELpZVEyBkvVIBAfvqJwDXDQFPNSulcDL5zOwwHR
         FwyY0Ee2V2LPoU56nIqcV+YXOPDfOJHBhEc0wxnxKqYTZ6zBBW3qhY6Cfy+1l1EmrzLY
         SqBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=sE7ro3lobw++GJaeoTWSfP2RdybDGx/IEAxRuZmV78I=;
        b=ewHNGvOMyTEYpqUvajH/CT8rDuBSnTJiqIGvlzKt03SC81OgJ/17KE5icDLWSI3EJA
         lO67ebN+mLf3zlnpgQh4CAQ6kZQA2vYnvGEeG53e7CCne/vi6ym1lWyzciczDZgP2rMc
         qvx2mP5JnSeUPvmClpFHgN5nArq87eMw43ieCYP6tq1/8OusmPlWSsexAyYSme4h0W8h
         sJ9YPBQbsE44VO3i04lzF5/6roLq7N0dj5EAmQWzisODrS5wk89E2yH/I5WYAEw3Th4i
         HkS2DA++7PYKkrmDasS8x7q5ce3sCUAUT2gmunBlsYEZBk9KOpLBpn/7LKjabj/2WDB4
         LsQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2kG6iZqG;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sE7ro3lobw++GJaeoTWSfP2RdybDGx/IEAxRuZmV78I=;
        b=Izq8Buz9hJe61YLbcuxS3sfNMOk8vlgZPhgIPPNswej6PEivSPzfaBtZThckg2BzAs
         RpZhpSVKQU4AEbIpd0WxIM/DBvuxZUMxvJ2t9tAbc3eK8CCPv/bUEkhPpq4jvYz2+aHl
         Cx5Ckf9cWQiKUsWQSoTfktKIsaF6tET3+M8WC6wEpBpH3NWUXlI+L+KH5Lj+8T/60g9t
         XjA7fv4arDKpUZdC2xBuRh4zLmfKMYbExdekkRushWukXydkxJzYvDNBInA1e12mlsWM
         Wx9qOjGTVk0uMoBz0v1WEJ34DqWKs71O9J4YMSwLqWOdxks5qNcUOouOb49XoraAwDxK
         SGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sE7ro3lobw++GJaeoTWSfP2RdybDGx/IEAxRuZmV78I=;
        b=j/2hQg84L0DZVmDLGpESTNUn8brrB2BSk2sF9ptB3ufsaZ36k2CBerVjvEW0fJCkD8
         ZLH06JmOrPGryhQm3tqpYRGlP3j9HKdiuS3LWjg56AcIKiJC0Cy8XRmUVrYhFdEiCHZh
         khV7XwS/G2mccSqSr1J8c91XO+ARtm9JKxq58a2+Dsr1er9/gM1u95tcBvG/KL0y8Nnw
         l0iPuw/vg8wdYkqzB6R+9dtnJBA98E3eLSKyWysFEy2gwTOYW1tnOib+ZTjkCO4pvJpn
         XQ4snmUfFn208uZ9FI8l6HwWIcYCmRyUqjxpyjjZEoF/eoPLs6mU3pTTftcRZHajMRkc
         nN1Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVMsa+euNUzNrwzK68mL7AjUgeyPA1e9PoGaOq/+nav9qVuLj7H
	rcAxJCZmU/uROOJhgkN1tAM=
X-Google-Smtp-Source: APXvYqz8x8H54k+GxcDTELSiJOxvqXHPq06DglFlsE+fwB3rzxtq5hFDh0OONRaIuXjPIZvFIYw4fw==
X-Received: by 2002:a81:2e0a:: with SMTP id u10mr18710794ywu.479.1563257013408;
        Mon, 15 Jul 2019 23:03:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:3288:: with SMTP id y130ls882125yby.5.gmail; Mon, 15 Jul
 2019 23:03:33 -0700 (PDT)
X-Received: by 2002:a25:e786:: with SMTP id e128mr19580737ybh.305.1563257013142;
        Mon, 15 Jul 2019 23:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563257013; cv=none;
        d=google.com; s=arc-20160816;
        b=U+jnbqpyUUSxOmkuL7Ksz8RWjGYvakwYW6lak5h364l+q+B5URcKit9jOyuqKXySjz
         jrfMi7tAqf/4mNkTXxI9t3LKHjjxvb2NCMnxY4L37y7UMESboEfsCwE7DBNauNYDiXWt
         q+ra9B38do3JjfJpI8iFLdpoOJbz3rURkhP3hzhwDwCPh4dv1jxCovg2e3sXAkLz45Pz
         bvsb9KZsMCOCb1G+LuLQaMLP780DqKnukt55FCiBNjGuqOvPLJ87yhnKgFfxtljwoJFn
         ZHu2aohRMCiUot89MxeHbcodPojh+lSC6vnf2jsOFjNo7rOvfZh+Ha7qAZ9J+ygq520c
         XmNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=oQmOGyesxNYba6XgTksWhWesX7fjaeLuJ1z/AasyoXk=;
        b=o0HamfYyaP9A6FY4T5ii0EEcCBS7/k+S3zHO5UsFdn6V/MxXwM6mcFlMGDHiwz+VHr
         HiCCklFHMgBdA2NKXyy5l/a85qSqTKyRAvUMmOZEIF7KcLEEJzprBcpI2t7RdSCb2L7P
         LGQkKLJOe1gu2fEGQGIrp15LQX0e2q/WzM3aDLJ3cSrxbkl00io2szPIt/8I3CSqFX4a
         rBxax+1Wg5NR64pCGDgdIT88IV8SgfE4PA4P536q9sbuuOPysew/bvrNPlJeTRHsNkDA
         RfSNg81on0HFrxtuEr9tsvxcdX5rfKxdW8x8D016MLFizeOgQTZhwQAb7fNbH/enfC99
         CR7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=2kG6iZqG;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id f131si149118ybf.5.2019.07.15.23.03.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 23:03:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id x6G636iI027203
	for <linux-ntb@googlegroups.com>; Tue, 16 Jul 2019 15:03:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x6G636iI027203
X-Nifty-SrcIP: [209.85.217.42]
Received: by mail-vs1-f42.google.com with SMTP id k9so13099319vso.5
        for <linux-ntb@googlegroups.com>; Mon, 15 Jul 2019 23:03:06 -0700 (PDT)
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr18511354vsl.155.1563256985984;
 Mon, 15 Jul 2019 23:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190716130341.03b02792@canb.auug.org.au>
In-Reply-To: <20190716130341.03b02792@canb.auug.org.au>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 16 Jul 2019 15:02:30 +0900
X-Gmail-Original-Message-ID: <CAK7LNASTDPG6bDeXj9GfWQVB559D6GEsZiUaiqCfzcPpteZxZw@mail.gmail.com>
Message-ID: <CAK7LNASTDPG6bDeXj9GfWQVB559D6GEsZiUaiqCfzcPpteZxZw@mail.gmail.com>
Subject: Re: linux-next: build warning after merge of the ntb tree
To: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Jon Mason <jdmason@kudzu.us>,
        NTB Mailing List <linux-ntb@googlegroups.com>,
        Linux Next Mailing List <linux-next@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=2kG6iZqG;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.82 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Tue, Jul 16, 2019 at 12:03 PM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
>
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

commit 0539f970a8427138026d4738a7a32d869f1be300
Author: Masahiro Yamada <yamada.masahiro@socionext.com>
Date:   Thu Jul 11 14:44:31 2019 +0900

    kbuild: create *.mod with full directory path and remove MODVERDIR

is the first bad commit.


drivers/ntb/core.c defines MODULE_VERSION().

When CONFIG_DEBUG_SECTION_MISMATCH=y,
scripts/mod/sum.c tries to open the non-existing old
source based on the stale *.mod file
during the directory descending.


I will kill cmd_secanalysis for tomorrow's linux-next.


Thanks for catching various bugs!



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK7LNASTDPG6bDeXj9GfWQVB559D6GEsZiUaiqCfzcPpteZxZw%40mail.gmail.com.
For more options, visit https://groups.google.com/d/optout.
