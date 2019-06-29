Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CDE5AB59
	for <lists.bridge@lfdr.de>; Sat, 29 Jun 2019 15:11:34 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9D9ABB8F;
	Sat, 29 Jun 2019 13:11:24 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B5A50AB9
	for <bridge@lists.linux-foundation.org>;
	Sat, 29 Jun 2019 13:11:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7003E619
	for <bridge@lists.linux-foundation.org>;
	Sat, 29 Jun 2019 13:11:19 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id c27so1303128wrb.2
	for <bridge@lists.linux-foundation.org>;
	Sat, 29 Jun 2019 06:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=date:in-reply-to:references:mime-version:content-transfer-encoding
	:subject:to:cc:from:message-id;
	bh=HERAyb2nBKp/WDqxby03QYSAsCRvMKQF94fo9I4Jhww=;
	b=Lg2HLxJq7vfZbJ8AdYoSv/sk3q80EG1c38JPuTQVXGm9Yc2LXuSvIPqcvXMY4lWiYM
	dAAEtNCfIj1OGK9g7mGugPKdwar0pFC+SyVqWjRdBxh+K2/xM+OVfVyg83h+rVyKih/a
	DX4JGQBFGD4LnZ3kdNWB3Ovbecl1sSPF0JjnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=HERAyb2nBKp/WDqxby03QYSAsCRvMKQF94fo9I4Jhww=;
	b=Jr3Mh52paxjCD53AYEO/jGOs4xdp48KoyJ+y7V7N7qcm/aV6fe9vYGaCUEg5pKosns
	BJpe9it/50pZJl0nOg7FMHO4+1IaRku7rjUASAvtID1B1mtKlYh5gP8Ee+Ml+v6Iy0vZ
	WbUdBEqtEZlxJXbe7FCTmH0bnGj5KifyNmalaRk1oZDZ5JOfzUd6RkfugFp6JpkzUbiE
	TM9hF1P217rdaUkztUeXTvAbb4IjQ3Zwg0mMTBw7rZMWGe9AvZO5njPOI3vm9iVFvn17
	htaUL2xGkyuVLbaK9iDxU99H1f4iAupLiPcRRtwZ0WpxcHInN9utsMmYeTitKKpc6lgW
	bl2w==
X-Gm-Message-State: APjAAAX1YPgB1qeZPQsmXe51bzzjzFTiPqNHNaWzx8ouaP4m/N7i8gGS
	4KkqqXvD8k0HlARV7FruftaC4A==
X-Google-Smtp-Source: APXvYqx5pfQR8ly4u6UDLNJuUmHb1nHY3XRvB3Ky3QfJ7mG/it2qoN93o7Sj2YxlHOxTI9JAawmbVw==
X-Received: by 2002:a5d:5552:: with SMTP id g18mr3383625wrw.254.1561813877864; 
	Sat, 29 Jun 2019 06:11:17 -0700 (PDT)
Received: from localhost ([149.62.205.36]) by smtp.gmail.com with ESMTPSA id
	z126sm8781348wmb.32.2019.06.29.06.11.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 29 Jun 2019 06:11:17 -0700 (PDT)
Date: Sat, 29 Jun 2019 16:11:13 +0300
In-Reply-To: <41ac3aa3-cbf7-1b7b-d847-1fb308334931@linuxlounge.net>
References: <41ac3aa3-cbf7-1b7b-d847-1fb308334931@linuxlounge.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: Martin Weinelt <martin@linuxlounge.net>,
	Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org
From: nikolay@cumulusnetworks.com
Message-ID: <E0170D52-C181-4F0F-B5F8-F1801C2A8F5A@cumulusnetworks.com>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.or
Subject: Re: [Bridge] Use-after-free in br_multicast_rcv
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 29 June 2019 14:54:44 EEST, Martin Weinelt <martin@linuxlounge=2Enet> wr=
ote:
>Hello,
>
>we've recently been experiencing memory leaks on our Linux-based
>routers,
>at least as far back as v4=2E19=2E16=2E
>
>After rebuilding with KASAN it found a use-after-free in=20
>br_multicast_rcv which I could reproduce on v5=2E2=2E0-rc6=2E=20
>
>Please find the KASAN report below, I'm anot sure what else to provide
>so
>feel free to ask=2E
>
>Best,
>  Martin
>
>

Hi Martin,=20
I'll look into this, are there any specific steps to reproduce it?=20

Thanks,=20
   Nik

>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>BUG: KASAN: use-after-free in br_multicast_rcv+0x480c/0x4ad0 [bridge]
>Read of size 2 at addr ffff8880421302b4 by task ksoftirqd/1/16
>
>CPU: 1 PID: 16 Comm: ksoftirqd/1 Tainted: G           OE     5=2E2=2E0-rc=
6+
>#1
>Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1=2E10=2E2-1
>04/01/2014
>Call Trace:
> dump_stack+0x71/0xab
> print_address_description+0x6a/0x280
> ? br_multicast_rcv+0x480c/0x4ad0 [bridge]
> __kasan_report+0x152/0x1aa
> ? br_multicast_rcv+0x480c/0x4ad0 [bridge]
> ? br_multicast_rcv+0x480c/0x4ad0 [bridge]
> kasan_report+0xe/0x20
> br_multicast_rcv+0x480c/0x4ad0 [bridge]
> ? br_multicast_disable_port+0x150/0x150 [bridge]
> ? ktime_get_with_offset+0xb4/0x150
> ? __kasan_kmalloc=2Econstprop=2E6+0xa6/0xf0
> ? __netif_receive_skb+0x1b0/0x1b0
> ? br_fdb_update+0x10e/0x6e0 [bridge]
> ? br_handle_frame_finish+0x3c6/0x11d0 [bridge]
> br_handle_frame_finish+0x3c6/0x11d0 [bridge]
> ? br_pass_frame_up+0x3a0/0x3a0 [bridge]
> ? virtnet_probe+0x1c80/0x1c80 [virtio_net]
> br_handle_frame+0x731/0xd90 [bridge]
> ? select_idle_sibling+0x25/0x7d0
> ? br_handle_frame_finish+0x11d0/0x11d0 [bridge]
> __netif_receive_skb_core+0xced/0x2d70
> ? virtqueue_get_buf_ctx+0x230/0x1130 [virtio_ring]
> ? do_xdp_generic+0x20/0x20
> ? virtqueue_napi_complete+0x39/0x70 [virtio_net]
> ? virtnet_poll+0x94d/0xc78 [virtio_net]
> ? receive_buf+0x5120/0x5120 [virtio_net]
> ? __netif_receive_skb_one_core+0x97/0x1d0
> __netif_receive_skb_one_core+0x97/0x1d0
> ? __netif_receive_skb_core+0x2d70/0x2d70
> ? _raw_write_trylock+0x100/0x100
> ? __queue_work+0x41e/0xbe0
> process_backlog+0x19c/0x650
> ? _raw_read_lock_irq+0x40/0x40
> net_rx_action+0x71e/0xbc0
> ? __switch_to_asm+0x40/0x70
> ? napi_complete_done+0x360/0x360
> ? __switch_to_asm+0x34/0x70
> ? __switch_to_asm+0x40/0x70
> ? __schedule+0x85e/0x14d0
> __do_softirq+0x1db/0x5f9
> ? takeover_tasklets+0x5f0/0x5f0
> run_ksoftirqd+0x26/0x40
> smpboot_thread_fn+0x443/0x680
> ? sort_range+0x20/0x20
> ? schedule+0x94/0x210
> ? __kthread_parkme+0x78/0xf0
> ? sort_range+0x20/0x20
> kthread+0x2ae/0x3a0
> ? kthread_create_worker_on_cpu+0xc0/0xc0
> ret_from_fork+0x35/0x40
>
>The buggy address belongs to the page:
>page:ffffea0001084c00 refcount:0 mapcount:-128 mapping:0000000000000000
>index:0x0
>flags: 0xffffc000000000()
>raw: 00ffffc000000000 ffffea0000cfca08 ffffea0001098608
>0000000000000000
>raw: 0000000000000000 0000000000000003 00000000ffffff7f
>0000000000000000
>page dumped because: kasan: bad access detected
>
>Memory state around the buggy address:
> ffff888042130180: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
> ffff888042130200: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>>ffff888042130280: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>                                     ^
> ffff888042130300: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
> ffff888042130380: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Disabling lock debugging due to kernel taint


--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
