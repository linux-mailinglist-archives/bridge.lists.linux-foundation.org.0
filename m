Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2EC16AD41
	for <lists.bridge@lfdr.de>; Mon, 24 Feb 2020 18:25:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BA188742F;
	Mon, 24 Feb 2020 17:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7i3bPuqlzxua; Mon, 24 Feb 2020 17:25:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5041F873DE;
	Mon, 24 Feb 2020 17:25:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 30A85C0177;
	Mon, 24 Feb 2020 17:25:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 12294C0177
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 17:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F047B86027
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 17:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OzinqPbe0QkW for <bridge@lists.linux-foundation.org>;
 Mon, 24 Feb 2020 17:25:06 +0000 (UTC)
X-Greylist: delayed 00:22:18 by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 50BFD85FA3
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 17:25:06 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id z16so11051540iod.11
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 09:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jz9ts4SCtKZj37NIPf8q4/BPLrwc/osDKFjhv7rsDeI=;
 b=tRkgNoX4yJhq2d5BmyfWy8mpkG4kC5+XKVPug3Pci6UF4uEEf2kXBaopNRhVs4i3DW
 k0Gc8JctiyRHscnKKtxyXy5h7B7cLp62sXtrkkW3jpAv7dOYt7AIjzRhbIRC01dOZLc7
 Q6LA/wbFEkb8Rvjtu9J0IPZO2TsfFbvbo9uVaXMgJ8AeXjQXie0GgkuU3M338nu3Wzm6
 67CzBqx5fx7TkVKfIH33zZ5zo5W/8anAfqWUyKanHz5rVYSeCLi390iZ4fUYKq4Zkjn0
 5s6Dx5EKZI/usIGZKq/+d6pqsNErugR12MOKa666p5TEIdizgzGkExzmyVtkvbqXEvAt
 ua0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jz9ts4SCtKZj37NIPf8q4/BPLrwc/osDKFjhv7rsDeI=;
 b=AlWeYRA7ZPsvGulmkYm542jE2obAF+lcyo43OLmhVdRd9/6hm8Gy/dotEuY7zEqYyV
 jfApWplcjJSmRwSQB1qFOGR+VkKaw87iAbWx9qmVgVG3n41ZGjmAPmROUk5UNP1/e5pK
 Gbu5JcJLQnMV19ePoWST8wlxxiRywLA3THPndfk0pKxrAYTl3qu3TAFl19F0OIe4JaXf
 5PhoJXtz0F+ZYsciMTqodnVzCFw1KE3DEvuQQR76V2xa2vSGY5ChfABV4HdNPgSnEWGO
 TUzf2xIhDhIIRiAe2XKcVPx/98XW6XOsIIHAG66umePFd9cEBZo75mnHZlWgNG2DGEeq
 550g==
X-Gm-Message-State: APjAAAWcVHZG2UO8X1b7ixrQDeg/UsyeN+tBVDKtOrR5L+CM+ddy/rRl
 6Gz3VZdU6xcV5Ti7ZhT/9VU3uR0i/ns=
X-Google-Smtp-Source: APXvYqzNgEvVHwwYp171vq+DGUKIznXT5NreSgy9nkOB9PXvTHLAnh95EBienIEWE6Q2TXU8zVuOuA==
X-Received: by 2002:a63:594a:: with SMTP id j10mr55004172pgm.227.1582563276024; 
 Mon, 24 Feb 2020 08:54:36 -0800 (PST)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id b12sm13755654pfr.26.2020.02.24.08.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 08:54:35 -0800 (PST)
Date: Mon, 24 Feb 2020 08:54:27 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200224085427.0358ed8c@hermes.lan>
In-Reply-To: <20200224164622.1472051-1-nikolay@cumulusnetworks.com>
References: <83cadec7-d659-cf2a-c0c0-a85d2f6503bc@cumulusnetworks.com>
 <20200224164622.1472051-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net v2] net: bridge: fix stale eth hdr pointer
 in br_dev_xmit
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, 24 Feb 2020 18:46:22 +0200
Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:

> -	eth = eth_hdr(skb);
>  	skb_pull(skb, ETH_HLEN)

you could just swap these two lines.
