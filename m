Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AA711F5BF
	for <lists.bridge@lfdr.de>; Sun, 15 Dec 2019 05:32:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1DCF284DD1;
	Sun, 15 Dec 2019 04:32:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DSerYUYP7jyO; Sun, 15 Dec 2019 04:32:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A19E984D0F;
	Sun, 15 Dec 2019 04:32:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 83A63C1D85;
	Sun, 15 Dec 2019 04:32:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5E807C0881
 for <bridge@lists.linux-foundation.org>; Sun, 15 Dec 2019 04:32:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4763884D0F
 for <bridge@lists.linux-foundation.org>; Sun, 15 Dec 2019 04:32:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2KAZNjEs6FKU for <bridge@lists.linux-foundation.org>;
 Sun, 15 Dec 2019 04:32:54 +0000 (UTC)
X-Greylist: delayed 00:22:05 by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C72BB84AD2
 for <bridge@lists.linux-foundation.org>; Sun, 15 Dec 2019 04:32:54 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id c16so3626962ioo.8
 for <bridge@lists.linux-foundation.org>; Sat, 14 Dec 2019 20:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=xY694KnXGlHwEnM5IxCeasI3CBIwUmkENhRchcSKqBs=;
 b=jQMDnKdtj5UjOtGBLN76SKHmmIcQU5b7bnWPN53p7CZ/WbEMVXW3UZXOvkSbd2mXpP
 yKgn65PesyrI4h+gkOOiJ10S0fJBYKYSakWrCTvb7D3QWmQQ3kdNyHO1O7oLeXQKh7m9
 muFlUcabl/xplTzsi9cevgdgRsTiIbHrhk9xAoIkQe3RBcnl4GH3JBjBc5y7Ga3Bmz8c
 kfCOckUKF3mctdIZ1/wwZUS7SiRs1JyF4f8rfiD2i8Lw5wbOyipxvr0hwskmRdDAeW+c
 lvejhZciw3hsja6TWiDD6R2R+r4f/ThG6xjohlwoBEi47ZPXKJjxA2BsrRjKsD0l3LAM
 OaWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=xY694KnXGlHwEnM5IxCeasI3CBIwUmkENhRchcSKqBs=;
 b=uJKmldCcGXsDJXMEeqeDlyAlSp3neXDInkpFv5fTJem3RVESMG2B8uoLrPwGvgnJaQ
 cQjb6/gBFHvHa5oy9q9XWsL5K05DHF8h3+q4GHdWAe5P2PDkwWzj0CoDGzM+vmSrdJ0k
 rjrMQixAsc7qtVpzIgLtCtLm+XKR+rg1/UYUOkwo1zBcWsAEJj4Fezra0Wol7AeP9pfn
 RLAu2O8uVedZwbjwXO2ofd5BqfMna0zxENJuSKLqh7NWvEuKZ5xdrxZHi5qxUaxAeFi3
 IIM0x3cdU4O0awXSs/XD8cZ0PkzIpjiyARWxIg1LVYg36nRR3+bHw7K/r8n/+aIHWo+c
 rcZw==
X-Gm-Message-State: APjAAAUDpvDWA5eI6deZIKfxs+gaJJ+M4ZOAxjLys11MHgucYwGcXaSN
 7Dv0y3kcmviSjeSt+H4udppGL6BnjHs=
X-Google-Smtp-Source: APXvYqwbdy+7fNEzR4dEsZoza9VgO6c96pEK2SX1UlMZxBn7OPgObEd/YI7rd8E2ejr7kt1aEJsFVA==
X-Received: by 2002:a63:3756:: with SMTP id g22mr9734524pgn.375.1576382614756; 
 Sat, 14 Dec 2019 20:03:34 -0800 (PST)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id n2sm7403672pgn.71.2019.12.14.20.03.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 20:03:34 -0800 (PST)
Date: Sat, 14 Dec 2019 20:03:32 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Vivien Didelot <vivien.didelot@gmail.com>
Message-ID: <20191214200332.1c4d414f@cakuba.netronome.com>
In-Reply-To: <20191212010711.1664000-1-vivien.didelot@gmail.com>
References: <20191212010711.1664000-1-vivien.didelot@gmail.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 David Ahern <dsahern@gmail.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next v3] net: bridge: add STP xstats
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

On Wed, 11 Dec 2019 20:07:10 -0500, Vivien Didelot wrote:
> This adds rx_bpdu, tx_bpdu, rx_tcn, tx_tcn, transition_blk,
> transition_fwd xstats counters to the bridge ports copied over via
> netlink, providing useful information for STP.
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>

Applied, thank you!
