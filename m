Return-Path: <linux-ntb+bncBCS4BDN7YUCRBEU6RHUAKGQEQFJLCIY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB114367C
	for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 15:26:43 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id b24sf11947091plz.20
        for <lists+linux-ntb@lfdr.de>; Thu, 13 Jun 2019 06:26:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560432402; cv=pass;
        d=google.com; s=arc-20160816;
        b=vIjNHvBD6aFxXS+F93xNPbcc0wcL/J4DKtBFJmfHKwEWbo5f0iJwAg3uy98Hu45CN2
         NaHUyyOtSCKt5X5S2MYhIh8K6uJAZqpD/vzWQccwRjribaM9kaRbEiQIcUfrRAqqGNwV
         6dz4eLXBO/XpAN/yFINRmdHszl+ZpGpCgnTC4+XeSU5gNEv2jC5JRAH78ZIo/CC93WLV
         w49JQvT8LshQcDgQ9ngvcnVcFeEwQeyz811K6Yt3Qd79mG9el9HLFrOYwTFMSf+rPcLe
         IcU/3FgRS9npGYr+PjvKCvWAlZ5+UIfect9HPYqeX+3MOY6w3X1xjDM7hYlc36zbDuwH
         qIaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=alPns1YtTWRXjCc4YNqI4RJt6Mh9nepHZc8eVmjPXLc=;
        b=z/gqo7K+NPGdHgGpoBD3LV3qUzY2x8ZVfZMweI9TshLPtd1tjLhASVHOVWxIW+8LvU
         U+qEB3M2vOgz12nIVBUmWpTHq4JxQgSDgnpGwNFAxPEyROeP6Q6PyRd+tAzDeXgtmO4d
         eWTssjxU/StVvmOfM6W29kBm+6rLbr4fHCCVLgrSUe229k5rVdIz3TusMUNLNt9HUud+
         OvSdrbYr4c19nimscDNOzPonkwco8KvGEUO0ECA4QVxj6fDoyUi9XXy/oK515qj5A4Ck
         csiIBU2Z24IdjKNGf05JvP+2RhjgUCBgCcw1dwwb+RgiKsukA8MVOxDCcOZqoN7SFok1
         +shQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="XNdld/Nq";
       spf=neutral (google.com: 2607:f8b0:4864:20::b44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=alPns1YtTWRXjCc4YNqI4RJt6Mh9nepHZc8eVmjPXLc=;
        b=JWLm1wEcKaK9GjLR9SpXhrqR46/4vI81DFHzTohF5grBMmQynsKCXIBYehEzo1AztY
         LZybwRm80YLQxAvYbXKURzgN0DWwGTw3dgP3UJhD3kKkMbXTsl5v3SOCzAiMMDftOmjE
         477Lasg5QmdrJUNBLUwcaNca4KZ4ZdjjkjdtXyYXQD3QZzBEJiGZg5VsHhNcMnNAHnuf
         qGIn4RL1hn6/X5EWvAxYcYzFuDgY6UNNJM5FaYjkvXMgkQ9gyvMUPL2+HvVfoyZwNWnK
         uT4UldwUAjUlviuNYhfe+wUsfiO4ZihTk7Os1w4Ayn6H9ZH3bBrif8SSQLbEyu36sodC
         pltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=alPns1YtTWRXjCc4YNqI4RJt6Mh9nepHZc8eVmjPXLc=;
        b=scPrO3ybTGmOf6L/wComoM+Ag8i7e7hTTRDKn7rYv4pkI7UKzbk8Pg8GMYLTSU1YcS
         ULR/1+oigDbPKGt+lih7oIjtZS6L3S53Qik1XqClawCLCwosM26vCpGwbxfrLSKInCJN
         +lvr++vQ80tRBTgBy1zZd4MvsCl4Ar5sZrj3/9CVUUTMwHdsWGuq0uaFiz+chTYTB4F8
         YXvmAgrlmqbWXFPkMRu7LCZ6ZCwwzoo54CwwcqrJC4jJi99B3FP5/j/GGxXVKUc0BzJo
         E6zyPqqM8QlWqL71iK/UoKpD+gxMihbVted/wAdzVnx1y3RfQwqIX1WjDYLL9fbwDYjK
         OvBQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX6JRy1kn7qGqRSeeWd/dohxtFFK3PqpMkoaSUBZEw4jwp0eJLg
	peyj9iHD/kHP3H2dmBv+DZo=
X-Google-Smtp-Source: APXvYqzhgrkL6FSUGCAo/NjFRTzRpyBz0vpmqG/27bOGytJMec9h1kg+iQWm4CBsb/y7Cq6zbfCS4A==
X-Received: by 2002:a17:90a:5887:: with SMTP id j7mr5574017pji.136.1560432402646;
        Thu, 13 Jun 2019 06:26:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:bd8b:: with SMTP id q11ls1437013pls.4.gmail; Thu, 13
 Jun 2019 06:26:42 -0700 (PDT)
X-Received: by 2002:a17:902:ba8e:: with SMTP id k14mr23947866pls.256.1560432402357;
        Thu, 13 Jun 2019 06:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560432402; cv=none;
        d=google.com; s=arc-20160816;
        b=yqnjz28WrHnqHf3KJGYn84w3Sr+e88zy7nNWz2HED/iDMp++ZA4O1DkVdTzY/8Bxa3
         hGfJ+D9GqgwEFGDf69Es4UGigU9Tshkp0eBk4lfCBnjFAWL9tgutfx9cGWcC8MAt5u7s
         naRaVSMWKLtRu7DWFC7M+15CmcqrBm89CQ1IMn3kB10G4PJiH3gWDyLSAPXHPYajEYDs
         uErmOF4QB5yviup/1KA6OXeSNlvYsVgmyiRyKEhX6Idu2t4gDrYta7WNh4w8WByYscbg
         875fKYxU8uLFs/VWJ6trEYx1B09xPdoX56STSDiGdftRx11ajRmXcSno428AXH4vJqJ+
         rGUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lMgV4ON/3RozpiQ6/NK+437FsBlCW7zS3QFn/Y7ng/M=;
        b=GBPy+0lmCBnqBq9vsrjr/+UJvC5JBP4uIQ3HWtg0swAUSjgg5c7OUB0DdGUnel+lmz
         G9vIApVcO4TutZLk8PP1jy0Bihr2Jc8FzGEowguxJpnMJrRnxAxHT9jMIBKzG1merZrD
         8zoBK7l4KW2GHF0lCLeWOyhir4hiKjLXAo6URS4gaPp87WCbJ+PwFOrpH+5eVoyTUzGo
         6bVtcVYASF4TXboGQYhIV5/eBVDoCFMaqQWq6tJN3yJ8hrPGTJXs5RdM4JVnx1qv4Wqg
         iD7QVsN+0R9IrhJnpHPgbjLoN5vGG+W+lnlin2b+aQtXae6x0H9YGOCam7bznZZ+KANp
         DPOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="XNdld/Nq";
       spf=neutral (google.com: 2607:f8b0:4864:20::b44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id s128si62247pfs.5.2019.06.13.06.26.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 06:26:42 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::b44 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id g62so7817562ybg.7
        for <linux-ntb@googlegroups.com>; Thu, 13 Jun 2019 06:26:42 -0700 (PDT)
X-Received: by 2002:a25:e08:: with SMTP id 8mr4037668ybo.177.1560432401543;
        Thu, 13 Jun 2019 06:26:41 -0700 (PDT)
Received: from kudzu.us (76-230-155-4.lightspeed.rlghnc.sbcglobal.net. [76.230.155.4])
        by smtp.gmail.com with ESMTPSA id d63sm724375ywf.41.2019.06.13.06.26.40
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 13 Jun 2019 06:26:41 -0700 (PDT)
Date: Thu, 13 Jun 2019 09:26:39 -0400
From: Jon Mason <jdmason@kudzu.us>
To: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Subject: Re: [PATCH] NTB: amd: Silence shift wrapping warning in
 amd_ntb_db_vector_mask()
Message-ID: <20190613132638.GD1572@kudzu.us>
References: <20190325092326.GE16023@kadam>
 <af8b8b48-ad5e-75c2-d3fe-674b14a0b9af@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <af8b8b48-ad5e-75c2-d3fe-674b14a0b9af@amd.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="XNdld/Nq";       spf=neutral (google.com: 2607:f8b0:4864:20::b44 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Tue, Mar 26, 2019 at 05:46:44AM +0000, S-k, Shyam-sundar wrote:
> On 3/25/2019 2:53 PM, Dan Carpenter wrote:
> > This code triggers a Smatch warning:
> >
> >     drivers/ntb/hw/amd/ntb_hw_amd.c:336 amd_ntb_db_vector_mask()
> >     warn: should '(1 << db_vector)' be a 64 bit type?
> >
> > I don't think "db_vector" can be higher than 16 so this doesn't affect
> > runtime, but it's nice to silence the static checker warning and we
> > might increase "ndev->db_count" in the future.
> >
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> Acked-by: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>

Sorry for the delay.  The patch is now in the ntb branch.  We've
missed window for 5.2, but it will be in the 5.3 pull request.

Thanks,
Jon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190613132638.GD1572%40kudzu.us.
For more options, visit https://groups.google.com/d/optout.
