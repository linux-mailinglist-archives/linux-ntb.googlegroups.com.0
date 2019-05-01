Return-Path: <linux-ntb+bncBDK2ZV75TIORBU7IU7TAKGQESRQXYFY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C54910D33
	for <lists+linux-ntb@lfdr.de>; Wed,  1 May 2019 21:32:36 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id z7sf18885685wrq.0
        for <lists+linux-ntb@lfdr.de>; Wed, 01 May 2019 12:32:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1556739156; cv=pass;
        d=google.com; s=arc-20160816;
        b=L+qntseT1QtZ+WSFB8EU3sNbbuFYf+MoAJ7q+gaGFLEh5FCl95cG/aGdicbF1TiMzU
         4cCCuH/2VUUSagTG+pUPFhpeY+criCB5KPHgvsZI6OsoizevloFYcWqUzqJ7F1oxVXJD
         XzXCsYibyKoXZXNzoQW4dISS8W2v9IlW26w2+VG32rwVy9Bfdo5BvdO5DScxM7DLtXku
         6x9s8XVlmHn4RV2WpDPhwXvhGQQ3crYjV1sMbrNHclf832J3RXZX21XLJYtyvy1DWE5R
         HZLr0Z6Kz0tNiQ6qZKH1PHVE4SNg7vc7egCM1hxzyi3yizfewfiuAr2qNUn348HBkq6g
         t88g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zkw58i1ynCvSpazwaS17nsQJ8yxvXIxLvZdgwT5PYjU=;
        b=JvOQMJgKcRTuYB/ELlGngzsyVus7a58ZxF5X+9ijJGtRcDtQ6F+q/B2GuMM2oPivWS
         QLNQVWoSjb5/g0uZvSaE104Q2LDNZFsoBmw7yFOmksfL6ZZkGqyv/OOqqZH4/u9esbIy
         W1JZjzL9FElxbtqNMSUrvXruFAKv7kpq7AwDlMxw5EngZXWcGOBHI6coD2RCAbxLCzXQ
         R4N2uOEHglrLjfT/mKX/Pw5sOfp5gaW918dLiBM82agOnpWo9LoWT+Q+HRMpp47aMvaC
         KmifnaDXzFC0DUyR5MJmgN0f2yMvU6MkPx5JDNUSX8XecAxWXIDtQzWsA8tDY1UQR+Yd
         LfzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623 header.b=iP7UPBc0;
       spf=neutral (google.com: 2a00:1450:4864:20::332 is neither permitted nor denied by best guess record for domain of epilmore@gigaio.com) smtp.mailfrom=epilmore@gigaio.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zkw58i1ynCvSpazwaS17nsQJ8yxvXIxLvZdgwT5PYjU=;
        b=hDaYtnZ2NaDRs3GpFIvA9PC1Soe0ER7fv9MazcmEEIjJ4BAfcgT+rKqsWfFloPdfHP
         If/xZzGDHpR1Hwi1Y/zXvNlm+FWLgmRyqIw3/ha8/JM+SaS5fwdO8Gop7/g5Y2vfJKG4
         UZkZ8BFlwsLi3Sw2qt+mq2Vt7dqHzZeo5LUL4NDaW4cYMY5GcdgvhbDDKoyAndodKPoZ
         /AWEj2GYrMHU7vhFv8BdqEXEFWMjUutMceMTbfyTk5/2b/eXAHfYYY3Vyi7YguuxUHF4
         c3UFF27+8k5y6MkqEs59t4tf0tQDu1SvPzPgGjSK75cBWwwWIQE9iFEDjF+ajTJRhYyz
         fhMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zkw58i1ynCvSpazwaS17nsQJ8yxvXIxLvZdgwT5PYjU=;
        b=dIjodgaIrumYYqKNfKUKnVk1xmcFAvni3McmW621cflQ0f2YkLnDBjU6dTTPGKWrvO
         mwDWIxw8Q08KckINePgCgHQxmsxZmclvU98NneUxBs/d3q/iKZ5vy8mlgIL5Vdrawoy0
         RnbGrO1rEdCU2YGQCvOZzdoOZPiLvsYy/iU+bjDYRun8aM5B4GRnBinc3WN3IkO4RuNA
         5sKLABrjC7sAdMJ0Ex0RszcowxgnBjbUVAg1jhEA+kTgK4VCdNLpuUoWnpZyAaLaT7Vg
         VpOidGCBSKal53FtdWnMSsxThaKQrDrzsXz09mFv5nc7ahnJ9GTKOpdgjn47hFR/ER6J
         ++cA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUraxRmVPN/Y4URF6DqVFpS8mkQKUMUIWF9TFq1VsRXwGRlnoak
	g93Rbzq/l+YWf4Tpg0Xiygg=
X-Google-Smtp-Source: APXvYqwup2Qoi15tOnbiAjOBLIaM4Hf9fXK6rIgjvg1f2jW5+jmi3KJDUL66Y46LKPBKw0XmO/yhbw==
X-Received: by 2002:adf:ba93:: with SMTP id p19mr20692629wrg.195.1556739155936;
        Wed, 01 May 2019 12:32:35 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:f310:: with SMTP id q16ls18722wmq.3.gmail; Wed, 01 May
 2019 12:32:35 -0700 (PDT)
X-Received: by 2002:a1c:ed12:: with SMTP id l18mr8170987wmh.13.1556739155485;
        Wed, 01 May 2019 12:32:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1556739155; cv=none;
        d=google.com; s=arc-20160816;
        b=Y7dI87yZb2UElLCfaZyW0sZYf73fLuYGovWv8f0Hhx2UXoL51NqiJGbRIAS5kDWicF
         gXXHd+XVbq401Tz1EoTModk2W/OqWrIcLBnUOfxZIdHrX/USRbaSLed6q+HwLeX0gluK
         b1Elz8Jrl8EGACLEesIiaLDhwVnuY85cBs85wNfctiTrSWb/XLq2ooVrHKI1zNrYievh
         5m4P3pCkqtXh8qHbqBwEvz6QNgrH9+fl3GhtPCxq41CnSub1UwHzKAHXfIBklmoanqiq
         jh6iA7lDgXuwdziqI9NgqJl34UWYe2AdpTE0Z8PFcoeW0RoAZ0NI36ZmcxEpb1Z6AMDM
         IYIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hN7pPfFuA5DAqdy1xA+mZ+vwXrbfEuaD/a9O9EtXWTI=;
        b=B/ZyyZ6uw0mBGILtJ3OhALqUAfqQz/Gzwp37kydhWcg5alFIx63ETz5mih4x9VREt3
         MOBskbnIIVlRBXUOoVK6w8TJtPfUcNvEgJfUDnNoqRopdAfjrVU/yYzq3/2Pnh3eT4Xn
         tWp9sCCGetxE9tBee0l1F186xLeeMUTMApYwCYwigYkUXpdGAO4SJHbNr1wEu7aelcm9
         vG101BPn0UXQRCRIEVQ6tWR9Uje0SsIpku2IitinADGiHQr0CEIgU0PTWLHCBSpFvKxc
         4UH10B5k5j7+kBwHBPaXpKDQMHFE/CYv+O8YOL8ArFWCO5g2R6bLdZU/5yhwcDIf9xvc
         PpRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623 header.b=iP7UPBc0;
       spf=neutral (google.com: 2a00:1450:4864:20::332 is neither permitted nor denied by best guess record for domain of epilmore@gigaio.com) smtp.mailfrom=epilmore@gigaio.com
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id z185si253589wmb.0.2019.05.01.12.32.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 12:32:35 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::332 is neither permitted nor denied by best guess record for domain of epilmore@gigaio.com) client-ip=2a00:1450:4864:20::332;
Received: by mail-wm1-x332.google.com with SMTP id p21so259529wmc.0
        for <linux-ntb@googlegroups.com>; Wed, 01 May 2019 12:32:35 -0700 (PDT)
X-Received: by 2002:a1c:ef08:: with SMTP id n8mr7814108wmh.85.1556739155024;
 Wed, 01 May 2019 12:32:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAOQPn8vMn4h=oGWWKa3Uge7WYMkmRAmTyhR6RPjGVtrR1hfhOQ@mail.gmail.com>
 <4389bccb-6993-4a86-b4e4-202e971e2080@deltatee.com> <20190501155813.GB26910@localhost.localdomain>
In-Reply-To: <20190501155813.GB26910@localhost.localdomain>
From: Eric Pilmore <epilmore@gigaio.com>
Date: Wed, 1 May 2019 12:32:23 -0700
Message-ID: <CAOQPn8sbDjafaop2+bhB5PrxrhMWOOJ4Y5YMy6Se7+A9zrhrFg@mail.gmail.com>
Subject: Re: NVMe peer2peer TLPs over NTB getting split
To: Keith Busch <kbusch@kernel.org>
Cc: Logan Gunthorpe <logang@deltatee.com>, linux-ntb <linux-ntb@googlegroups.com>, 
	linux-pci@vger.kernel.org, Armen Baloyan <abaloyan@gigaio.com>, 
	D Meyer <dmeyer@gigaio.com>, S Taylor <staylor@gigaio.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: epilmore@gigaio.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gigaio-com.20150623.gappssmtp.com header.s=20150623
 header.b=iP7UPBc0;       spf=neutral (google.com: 2a00:1450:4864:20::332 is
 neither permitted nor denied by best guess record for domain of
 epilmore@gigaio.com) smtp.mailfrom=epilmore@gigaio.com
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

On Wed, May 1, 2019 at 9:04 AM Keith Busch <kbusch@kernel.org> wrote:
>

> Note that Max Payload Size may not be the same across root ports,
> so splitting transactions may be the correct thing to do under some
> circumstances. Kernel parameter "pci=pcie_bus_peer2peer" should make
> all MPS settings the same, though I doubt that will help for the
> hardware desribed here.

This is an interesting point which I had not considered before. The
TLPs coming directly from the NVMe drive are on a MaxPayLoad path of
256 bytes. When the TLPs get relayed from the Host Bridge, the
originating Host Bridge (BDF=00:00.0) has a MaxPayload of 128 bytes.
So, perhaps understandable that the TLPs would get broken up, although
going from 256 bytes to 1 byte TLPs is rather extreme, but perhaps
that's how this bridge deals with it.

Thanks,
Eric

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOQPn8sbDjafaop2%2BbhB5PrxrhMWOOJ4Y5YMy6Se7%2BA9zrhrFg%40mail.gmail.com.
For more options, visit https://groups.google.com/d/optout.
