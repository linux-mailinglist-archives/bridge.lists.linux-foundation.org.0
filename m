Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A06467A45E6
	for <lists.bridge@lfdr.de>; Mon, 18 Sep 2023 11:30:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2830D81D0C;
	Mon, 18 Sep 2023 09:30:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2830D81D0C
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=bR7NzoD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZS4YyKwMLIi1; Mon, 18 Sep 2023 09:30:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 7422E81D21;
	Mon, 18 Sep 2023 09:29:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7422E81D21
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 12E07C0DD3;
	Mon, 18 Sep 2023 09:29:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3727EC0032
 for <bridge@lists.linux-foundation.org>; Mon, 18 Sep 2023 09:29:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B29E60EF6
 for <bridge@lists.linux-foundation.org>; Mon, 18 Sep 2023 09:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B29E60EF6
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=bR7NzoD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I2PIz8hBvEON for <bridge@lists.linux-foundation.org>;
 Mon, 18 Sep 2023 09:29:56 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B8F1F60A9C
 for <bridge@lists.linux-foundation.org>; Mon, 18 Sep 2023 09:29:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8F1F60A9C
Received: by mail-ed1-x52b.google.com with SMTP id
 4fb4d7f45d1cf-530ea522f5eso1351918a12.3
 for <bridge@lists.linux-foundation.org>; Mon, 18 Sep 2023 02:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1695029393; x=1695634193;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=rCF0Horr2h7qpSaWZlXlmtXAqYL8heykh2jju7r+Kn8=;
 b=bR7NzoD3KYv2/jmiz6HoFr15t8QVahzPS4eP1Zc5lDAE6zuuzbxt5szA1r0RWixFcy
 FI/N5yRAID/D1SErHcG326XnjoyuBSCTFm1NFBLVh1xm0crrQcDZe6DgBU9D1Y8un2KI
 smnxlvoKVAO3gMEkGDOoz2rJ80ZYXBLd1TMErjLXC6wFTQCVyIcKiz/qScRdWJjeRjqs
 /IcVCMOeQfyNl56v8eOyUS1hIV9u+H58mMLsXFGmgxUr2fcpz1MzSSx5dJwUOMxmvRAa
 wLYwM+9M6MZimiHZI9tbBnFyM+aJDMW9A4/97nHai7i90S5nkRIaefwFZmmLDaavjYEE
 Hgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695029393; x=1695634193;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rCF0Horr2h7qpSaWZlXlmtXAqYL8heykh2jju7r+Kn8=;
 b=i5Jug3rBukPMRl0ctdz6WaaL3oi/Hd4vt3OqWybesi7NN+N0X8aCqateI6F/KpkftJ
 XSXYFkCzRLgFt5j69lkca4oPvzLmK9PJSi70NtsE3axgAiykqA7XZZB5tWJC9Ow5fJJ5
 zmeJkd4oQeCQqgmhN31JS0WTxTYzx3DQx2QdOCyCccAdB3bBl1aF5BB5xUkfIWxUOb/1
 tujy/pubUnvvBWxTts69gxh6NWCzwCgVqBdfMGXM8O6w9cgCoYYqPRcQUSTMjIyOkaNT
 h7AL3LmHr/aNE7ARWHnHyE4GNsfGSpL+1OTyYnf5BV0xYarXBQC9aQZjd7SjwVHwx6OH
 0OBw==
X-Gm-Message-State: AOJu0YzFfOI6AP/WD4WsdNPzGecGo+2RX2MPYYwMKoXb8j+pquAi1JNE
 sv2A3zrXLrAO94FdU8R3PamjWQ==
X-Google-Smtp-Source: AGHT+IGkgJG2oi+1IiOAdsDSHRZapGsHpsvkPvqvWhbn1ZX0g4zjjyu/H3CqgyuqFMT7pBJybUpaXg==
X-Received: by 2002:a05:6402:22d3:b0:530:8d55:9c6f with SMTP id
 dm19-20020a05640222d300b005308d559c6fmr7051153edb.2.1695029393531; 
 Mon, 18 Sep 2023 02:29:53 -0700 (PDT)
Received: from [192.168.0.105] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 cn10-20020a0564020caa00b00530be302f08sm3165002edb.49.2023.09.18.02.29.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 Sep 2023 02:29:53 -0700 (PDT)
Message-ID: <cf8b9040-46dd-21af-b92f-78af1f1536c7@blackwall.org>
Date: Mon, 18 Sep 2023 12:29:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Eric Dumazet <edumazet@google.com>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
References: <20230918091351.1356153-1-edumazet@google.com>
Content-Language: en-US
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230918091351.1356153-1-edumazet@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: bridge@lists.linux-foundation.org, netdev@vger.kernel.org,
 syzbot <syzkaller@googlegroups.com>, eric.dumazet@gmail.com,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH net] net: bridge: use DEV_STATS_INC()
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

On 9/18/23 12:13, Eric Dumazet wrote:
> syzbot/KCSAN reported data-races in br_handle_frame_finish() [1]
> This function can run from multiple cpus without mutual exclusion.
> 
> Adopt SMP safe DEV_STATS_INC() to update dev->stats fields.
> 
> Handles updates to dev->stats.tx_dropped while we are at it.
> 
> [1]
> BUG: KCSAN: data-race in br_handle_frame_finish / br_handle_frame_finish
> 
> read-write to 0xffff8881374b2178 of 8 bytes by interrupt on cpu 1:
> br_handle_frame_finish+0xd4f/0xef0 net/bridge/br_input.c:189
> br_nf_hook_thresh+0x1ed/0x220
> br_nf_pre_routing_finish_ipv6+0x50f/0x540
> NF_HOOK include/linux/netfilter.h:304 [inline]
> br_nf_pre_routing_ipv6+0x1e3/0x2a0 net/bridge/br_netfilter_ipv6.c:178
> br_nf_pre_routing+0x526/0xba0 net/bridge/br_netfilter_hooks.c:508
> nf_hook_entry_hookfn include/linux/netfilter.h:144 [inline]
> nf_hook_bridge_pre net/bridge/br_input.c:272 [inline]
> br_handle_frame+0x4c9/0x940 net/bridge/br_input.c:417
> __netif_receive_skb_core+0xa8a/0x21e0 net/core/dev.c:5417
> __netif_receive_skb_one_core net/core/dev.c:5521 [inline]
> __netif_receive_skb+0x57/0x1b0 net/core/dev.c:5637
> process_backlog+0x21f/0x380 net/core/dev.c:5965
> __napi_poll+0x60/0x3b0 net/core/dev.c:6527
> napi_poll net/core/dev.c:6594 [inline]
> net_rx_action+0x32b/0x750 net/core/dev.c:6727
> __do_softirq+0xc1/0x265 kernel/softirq.c:553
> run_ksoftirqd+0x17/0x20 kernel/softirq.c:921
> smpboot_thread_fn+0x30a/0x4a0 kernel/smpboot.c:164
> kthread+0x1d7/0x210 kernel/kthread.c:388
> ret_from_fork+0x48/0x60 arch/x86/kernel/process.c:147
> ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
> 
> read-write to 0xffff8881374b2178 of 8 bytes by interrupt on cpu 0:
> br_handle_frame_finish+0xd4f/0xef0 net/bridge/br_input.c:189
> br_nf_hook_thresh+0x1ed/0x220
> br_nf_pre_routing_finish_ipv6+0x50f/0x540
> NF_HOOK include/linux/netfilter.h:304 [inline]
> br_nf_pre_routing_ipv6+0x1e3/0x2a0 net/bridge/br_netfilter_ipv6.c:178
> br_nf_pre_routing+0x526/0xba0 net/bridge/br_netfilter_hooks.c:508
> nf_hook_entry_hookfn include/linux/netfilter.h:144 [inline]
> nf_hook_bridge_pre net/bridge/br_input.c:272 [inline]
> br_handle_frame+0x4c9/0x940 net/bridge/br_input.c:417
> __netif_receive_skb_core+0xa8a/0x21e0 net/core/dev.c:5417
> __netif_receive_skb_one_core net/core/dev.c:5521 [inline]
> __netif_receive_skb+0x57/0x1b0 net/core/dev.c:5637
> process_backlog+0x21f/0x380 net/core/dev.c:5965
> __napi_poll+0x60/0x3b0 net/core/dev.c:6527
> napi_poll net/core/dev.c:6594 [inline]
> net_rx_action+0x32b/0x750 net/core/dev.c:6727
> __do_softirq+0xc1/0x265 kernel/softirq.c:553
> do_softirq+0x5e/0x90 kernel/softirq.c:454
> __local_bh_enable_ip+0x64/0x70 kernel/softirq.c:381
> __raw_spin_unlock_bh include/linux/spinlock_api_smp.h:167 [inline]
> _raw_spin_unlock_bh+0x36/0x40 kernel/locking/spinlock.c:210
> spin_unlock_bh include/linux/spinlock.h:396 [inline]
> batadv_tt_local_purge+0x1a8/0x1f0 net/batman-adv/translation-table.c:1356
> batadv_tt_purge+0x2b/0x630 net/batman-adv/translation-table.c:3560
> process_one_work kernel/workqueue.c:2630 [inline]
> process_scheduled_works+0x5b8/0xa30 kernel/workqueue.c:2703
> worker_thread+0x525/0x730 kernel/workqueue.c:2784
> kthread+0x1d7/0x210 kernel/kthread.c:388
> ret_from_fork+0x48/0x60 arch/x86/kernel/process.c:147
> ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
> 
> value changed: 0x00000000000d7190 -> 0x00000000000d7191
> 
> Reported by Kernel Concurrency Sanitizer on:
> CPU: 0 PID: 14848 Comm: kworker/u4:11 Not tainted 6.6.0-rc1-syzkaller-00236-gad8a69f361b9 #0
> 
> Fixes: 1c29fc4989bc ("[BRIDGE]: keep track of received multicast packets")
> Reported-by: syzbot <syzkaller@googlegroups.com>
> Signed-off-by: Eric Dumazet <edumazet@google.com>
> Cc: Roopa Prabhu <roopa@nvidia.com>
> Cc: Nikolay Aleksandrov <razor@blackwall.org>
> Cc: bridge@lists.linux-foundation.org
> ---
>   net/bridge/br_forward.c | 4 ++--
>   net/bridge/br_input.c   | 4 ++--
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 

Thanks,
Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


