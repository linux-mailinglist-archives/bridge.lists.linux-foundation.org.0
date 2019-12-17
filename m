Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D8A122335
	for <lists.bridge@lfdr.de>; Tue, 17 Dec 2019 05:45:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CFF9E203B4;
	Tue, 17 Dec 2019 04:45:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id icdhQIHQCs8Z; Tue, 17 Dec 2019 04:45:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 611532036E;
	Tue, 17 Dec 2019 04:45:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 4FC54C077D;
	Tue, 17 Dec 2019 04:45:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D5CAC077D
 for <bridge@lists.linux-foundation.org>; Tue, 17 Dec 2019 04:45:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 040092036B
 for <bridge@lists.linux-foundation.org>; Tue, 17 Dec 2019 04:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yAgKchm9XXyJ for <bridge@lists.linux-foundation.org>;
 Tue, 17 Dec 2019 04:45:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id C1464200E5
 for <bridge@lists.linux-foundation.org>; Tue, 17 Dec 2019 04:45:50 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id p27so5486103pli.10
 for <bridge@lists.linux-foundation.org>; Mon, 16 Dec 2019 20:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zavmadytOudz+T/44TMehrS1o8s5e7V8+sU0tqu6M4c=;
 b=Yl7D+tzuSlv3bMSHN1THeOZpm5RuHPGIUT5A+Mjl4CPSZwQ6ua617xnIshk5Dw8Hx8
 kbDay2N4bvLjAKcFt2ulsel5x+3yUPIt9ITwQ5N8Pwk+RGXR0XXHh2rnEcRy1BSgMCxU
 nXIw7E+SE9BT/VU/+Z6e8pCM9mIYdRvivLeccH+1wCViROooPjk0an4vwDrJ9tPdtC8U
 iPk2nKAr5aDhaEWhXF3n16ptBDFq8Vxd2+Nfn5jfIfBh7OGC+yVYJiqE7oMjVYbjFVC2
 mmAFYS9QhszLi0RmO76zJaQG9YgKzWc9eTFpHeH211ngK6FItCs6vHu9iee6iQRpN7K5
 mA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zavmadytOudz+T/44TMehrS1o8s5e7V8+sU0tqu6M4c=;
 b=nIZZBMepTy3MxH4LVvGTdGCrCDn7soWpDxUjAacsIduYCXpJVZAyJfDTDDButtZJYq
 rGxKiul+xErdpzlcpoJJTYFdB+q4qtAYnsREOgUwx6cmvd0spVojM/LA2a3KxQ8ZzP+Q
 CDdWncJgVWFAg7Jg4mjXeYyT+gxKa1qc0/EfFV3na4CxHjeAz+nmQay0WX5DeRf9qSBk
 Y9ylKxPsmM6HXQfePxJHHANOO4LWbiJM9eRH1n7Mw3nzhIfYOXa4MzOZ7hkx9JEd0kj7
 gDcLsefW5UAunPkSCPKkcsZL6aXhgKsVJ0spwnnc4bfH83+B0ZxcIJLbZaspXTEG+6rO
 F/Ww==
X-Gm-Message-State: APjAAAWYpg2bj2vVct39Go+Iiz+4itxWWmD4SRDQ8nM7qk+YbdkY1uQc
 kha1YcZ7CYubiU5XWtw2IXsAsw==
X-Google-Smtp-Source: APXvYqx4OQ0x697HWrrSi7bQLiJ1jbQNRF39PCZuz3k09Gk0meQXxiSQ2ngA2BBYtkIs+ktBtEDl5Q==
X-Received: by 2002:a17:90a:2486:: with SMTP id i6mr3892704pje.9.1576557950229; 
 Mon, 16 Dec 2019 20:45:50 -0800 (PST)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id 81sm24211043pfx.73.2019.12.16.20.45.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 20:45:49 -0800 (PST)
Date: Mon, 16 Dec 2019 20:45:41 -0800
From: Stephen Hemminger <stephen@networkplumber.org>
To: Vivien Didelot <vivien.didelot@gmail.com>
Message-ID: <20191216204541.0540deb2@hermes.lan>
In-Reply-To: <20191212010711.1664000-2-vivien.didelot@gmail.com>
References: <20191212010711.1664000-1-vivien.didelot@gmail.com>
 <20191212010711.1664000-2-vivien.didelot@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 David Ahern <dsahern@gmail.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH iproute2 v4] iplink: add support for STP xstats
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

On Wed, 11 Dec 2019 20:07:11 -0500
Vivien Didelot <vivien.didelot@gmail.com> wrote:

> Add support for the BRIDGE_XSTATS_STP xstats, as follow:
> 
>     # ip link xstats type bridge_slave dev lan4 stp
>     lan4
>                         STP BPDU:  RX: 0 TX: 61
>                         STP TCN:   RX: 0 TX: 0
>                         STP Transitions: Blocked: 2 Forwarding: 1
> 
> Or below as JSON:
> 
>     # ip -j -p link xstats type bridge_slave dev lan0 stp
>     [ {
>             "ifname": "lan0",
>             "stp": {
>                 "rx_bpdu": 0,
>                 "tx_bpdu": 500,
>                 "rx_tcn": 0,
>                 "tx_tcn": 0,
>                 "transition_blk": 0,
>                 "transition_fwd": 0
>             }
>         } ]
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>

This patch depends on new kernel features, should be to iproute2-next
