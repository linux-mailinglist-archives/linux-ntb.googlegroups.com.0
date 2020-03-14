Return-Path: <linux-ntb+bncBC6JD5V23ENBB2HTWLZQKGQE5VCWIQQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F4218558B
	for <lists+linux-ntb@lfdr.de>; Sat, 14 Mar 2020 12:03:05 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id n3sf1795950ljg.16
        for <lists+linux-ntb@lfdr.de>; Sat, 14 Mar 2020 04:03:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584183784; cv=pass;
        d=google.com; s=arc-20160816;
        b=utPFlRKsvKseqGI1DgFph+Nm7EtrFLTIfxoz32JRcL+QWAGD6BcSDT0k4CCbpqRPdt
         +6zhSBZcbAgeDZ/VMFpBAIOMqgpZRXccN750oswh8aFStnHP0R515p85XS6HKM8j/rNk
         1foH/mgFgjUuP4P3Hkcnzh++tSUacft92AmdBa2LdwLtkZk05uXxMWk7AEPVGKmBmCou
         4JPn8z39mMLDM6AwlOnZYlRzwoVaKbxQwGxkAJ78FsiIibNA93OVWeSzMuctE13NEnTV
         2RvfdoTjNa4vnOovk1MNgkpsuG1NRTG2p1SfwWPJQhoNRzjNX5TEiR6sMDYhHA7B5qqM
         5MQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=L7BQ+7qJC6Gr+PxoqNTEq4MGPbJmtEw5s2s+2W5vwLc=;
        b=UWqNE5kuhSF1EaGTixqxJrh2qc6u25kO9xtI1vHZUW7PTcNbFNj2F2/sKYbGt1WRMI
         8pRJVMuKoqxYNv4qtZnX22JBjAywVIl/ZHmatO8MmkPuu17QfUH1ZLRhRwYN0+Pn3nN8
         uyDj49PkasaYQoM/cDyZwj+ZPs6mnohBwKkF3MpMQ5zCh47enur92UPlM2lamGFfqwgi
         QMp+GTIZ9YGD0FzbYtM9croeO3RHPrqhuL+avtpc5qJcy6PE9QpJiraPUFVLz8jtSs6P
         wlbk/CLB8GnUyVVqneYf2KrgBjtQp5X1HbzutuA7NlTRO4owhyIL1EofGHiT+cjDA+nU
         yjTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L7BQ+7qJC6Gr+PxoqNTEq4MGPbJmtEw5s2s+2W5vwLc=;
        b=dh8LWIzcDWzEb5DciNKMrI0yDlf6AVDp6O2v19UsJRCaPOSvaHN6Z13jMmiHzxEKbG
         EmVaGoeV9Hjk6gw8ZNf7UuoLQqH8hQ8/imEiKpJWDINkOkrQrC2LhDlDBgcVGZLEA2xR
         6CewyPtTs9ITr74MUHd9aPytHEPDVMojkhEWd8oJI9eIPscMat3NW8uoaf5lEZCOTgqB
         ZppRxSG3Cb4lJemUhJ9WfNhJOFDY1yX9ThRB9EL6JhA9Io3zzsmyncK/GdILU4t1X5TP
         TAG76hB9OahU00rgyyNllq2lvdkKboeDzotIM3jHp+F/DymnzZMGlbJreEE4f3GCkQn4
         QUdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L7BQ+7qJC6Gr+PxoqNTEq4MGPbJmtEw5s2s+2W5vwLc=;
        b=bkIxEyNwaaSiqVbZC6SsZkFc0Smal5sykGbGx4XIEN4PJ3+NtHBx9LQtwjaftJM98n
         LzRBWTUW/1aFM5/qGQgdljF6X8dJyktFYXiUmqmH8BkykRuDCqUHRUuHuIP3ZTixb8/v
         1msd6srwx7oIojwkHu7eGV9nqPzHfTO8kktuS/THkAuMAxxVFTnhN6qmbUzyUCdLtkgE
         aNun7f9evmz710aaQ1QIkG0cKLR3PFQ11mUNzPUTmekICyx9EQzN+7mCYhB5WxIeRr4h
         5oGf6r3Enk98DC+STpoSe/eYmWu83aZKgg5gyC1Uh7010GsAwp6yApgsym8JA27yKJgX
         OIXQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ034Tzj1PmRQbn+zWLBBI78L9S72DKU8jA0kf8KnZxh/AWJsPFn
	Iv6NrrsepkZ6u0qfI6Ov/lY=
X-Google-Smtp-Source: ADFU+vvC6sSRNOMc9ZqzkBwd9UyvsET0fF81Cqrfi2GPvJjDhhScm8BaP5hsCNIPULTyuMDJbnhlJA==
X-Received: by 2002:a2e:3e0e:: with SMTP id l14mr10987349lja.31.1584183784727;
        Sat, 14 Mar 2020 04:03:04 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:f80b:: with SMTP id a11ls108905lff.2.gmail; Sat, 14 Mar
 2020 04:03:04 -0700 (PDT)
X-Received: by 2002:ac2:5473:: with SMTP id e19mr11085411lfn.24.1584183783971;
        Sat, 14 Mar 2020 04:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584183783; cv=none;
        d=google.com; s=arc-20160816;
        b=rvnrUNypX9RQe7zJWhLKfBNXZbp1LxUY9rRKiiVwkW3eAbtHn9EC45KpNaWmzXOnt5
         BzllPRQumfK/c7bdCxT+3CeQFBJVSPHCinDaj+SnjfRIH8K7zoJn8wc57hwfpiLtwRNs
         VxwJFeXfzy1xmkkcRbjuIwyGcuXIedVOHG7tqEM1A7XRmBJv30c8XocyI3cGjUyyeonS
         AA+3a0qTZ87r6tR2D2qimv24rhXg/lonyL2iIbuoOcl21QxVxO98SKUScXmVZAnEais3
         bLXAlTAGj1NVsZLpibrxLYR17FQ6rlTU19jsOgGte5yNUSPNpPkLNzvTKUxHagJzkZ82
         2hXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=HXvNDpxcelYwn8PoDas8bnx/K7bC0ycG2928PB68YGs=;
        b=ViQDW0FFbk/fxs5JRY6drLpkVkIQM9LpxBI6nDsuNnpl8XoL9S9bMbR0B+x5KhVTk2
         uOrzZx+fNbb56S+AExo2pULS4dSYAQjfz6FDBDZ9WRsge3U6CDdCQ4nCeobr9J7Ewd6/
         4WAzV4zhS2MdOFPcX8bnUy2vra2J44LOcvoHpDS3BBozsAoJd9tX4Cq9GOmoaNFaKk8K
         6z79AQOdSF6P5IYnXPNKV1UJGNX96OqZ/C7h8mWn8xfzUOEa96PSkcd94DEfnLpWPHpe
         2rr0DlB1szDDdL8JVQK/kFqhvGik3Cg4Tmlnm7gLk317KgUT3jH9M84lcJ2TXRh97XH0
         o26g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com. [209.85.208.66])
        by gmr-mx.google.com with ESMTPS id c15si535354ljn.3.2020.03.14.04.03.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 04:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) client-ip=209.85.208.66;
Received: by mail-ed1-f66.google.com with SMTP id dc19so15253538edb.10
        for <linux-ntb@googlegroups.com>; Sat, 14 Mar 2020 04:03:03 -0700 (PDT)
X-Received: by 2002:a17:907:429c:: with SMTP id ny20mr14725961ejb.278.1584183783358;
        Sat, 14 Mar 2020 04:03:03 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
        by smtp.googlemail.com with ESMTPSA id 94sm2657013eda.7.2020.03.14.04.03.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 04:03:02 -0700 (PDT)
Date: Sat, 14 Mar 2020 12:02:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Alexey Brodkin <abrodkin@synopsys.com>,
	Vineet Gupta <vgupta@synopsys.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Ben Skeggs <bskeggs@redhat.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jiri Slaby <jirislaby@gmail.com>,
	Nick Kossifidis <mickflemm@gmail.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrew Morton <akpm@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
	linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Subject: Re: [RESEND PATCH v2 1/9] iomap: Constify ioreadX() iomem argument
 (as in generic implementation)
Message-ID: <20200314110258.GA16135@kozik-lap>
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200219175007.13627-2-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Feb 19, 2020 at 06:49:59PM +0100, Krzysztof Kozlowski wrote:
> The ioreadX() and ioreadX_rep() helpers have inconsistent interface.  On
> some architectures void *__iomem address argument is a pointer to const,
> on some not.
> 
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
> 
> Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>

Hi Arnd,

This patch touches multipel file systems so no one is brave enough to
pick it up. However you are mentioned as maintainer of generic asm
headers so maybe you could apply it to arm-soc?

Best regards,
Krzysztof


> 
> ---
> 
> Changes since v1:
> 1. Constify also ioreadX_rep() and mmio_insX(),
> 2. Squash lib+alpha+powerpc+parisc+sh into one patch for bisectability,
> 3. Add Geert's review.
> 4. Add Arnd's review.
> ---
>  arch/alpha/include/asm/core_apecs.h   |  6 +--
>  arch/alpha/include/asm/core_cia.h     |  6 +--
>  arch/alpha/include/asm/core_lca.h     |  6 +--
>  arch/alpha/include/asm/core_marvel.h  |  4 +-
>  arch/alpha/include/asm/core_mcpcia.h  |  6 +--
>  arch/alpha/include/asm/core_t2.h      |  2 +-
>  arch/alpha/include/asm/io.h           | 12 ++---
>  arch/alpha/include/asm/io_trivial.h   | 16 +++---
>  arch/alpha/include/asm/jensen.h       |  2 +-
>  arch/alpha/include/asm/machvec.h      |  6 +--
>  arch/alpha/kernel/core_marvel.c       |  2 +-
>  arch/alpha/kernel/io.c                | 12 ++---
>  arch/parisc/include/asm/io.h          |  4 +-
>  arch/parisc/lib/iomap.c               | 72 +++++++++++++--------------
>  arch/powerpc/kernel/iomap.c           | 28 +++++------
>  arch/sh/kernel/iomap.c                | 22 ++++----
>  include/asm-generic/iomap.h           | 28 +++++------
>  include/linux/io-64-nonatomic-hi-lo.h |  4 +-
>  include/linux/io-64-nonatomic-lo-hi.h |  4 +-
>  lib/iomap.c                           | 30 +++++------
>  20 files changed, 136 insertions(+), 136 deletions(-)
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200314110258.GA16135%40kozik-lap.
