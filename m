Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D575B083
	for <lists.bridge@lfdr.de>; Sun, 30 Jun 2019 18:06:44 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5809ABA4;
	Sun, 30 Jun 2019 16:06:17 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16832AA5
	for <bridge@lists.linux-foundation.org>;
	Sat, 29 Jun 2019 13:23:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from linuxlounge.net (linuxlounge.net [88.198.164.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3C8B63D0
	for <bridge@lists.linux-foundation.org>;
	Sat, 29 Jun 2019 13:23:57 +0000 (UTC)
To: nikolay@cumulusnetworks.com, Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxlounge.net;
	s=mail; t=1561814635;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:content-type:content-type:
	content-transfer-encoding:content-transfer-encoding:
	in-reply-to:in-reply-to:references:references:openpgp:openpgp:autocrypt:autocrypt;
	bh=QqTXtzyg2EecwjVnslryBBJzQRwdzLS4pErgFFoAMAg=;
	b=H6WVbpcHJEI0fzQGaxalF5fhQ/9tWoJel0KPY3E+PjOFsVnWhb1f2SRb1WKccCG/qqGe9U
	u2uXOB2h3UKm9LlXyESlPJpWWFZmh1bHS5amazjMieLF8h8FopNkGDXSVWm59rlxsZeQcw
	nUXKWvEwzbbiW6BylfMU6658VKr0XQw=
References: <41ac3aa3-cbf7-1b7b-d847-1fb308334931@linuxlounge.net>
	<E0170D52-C181-4F0F-B5F8-F1801C2A8F5A@cumulusnetworks.com>
Openpgp: preference=signencrypt
Autocrypt: addr=martin@linuxlounge.net; prefer-encrypt=mutual; keydata=
	mQENBEv1rfkBCADFlzzmynjVg8L5ok/ef2Jxz8D96PtEAP//3U612b4QbHXzHC6+C2qmFEL6
	5kG1U1a7PPsEaS/A6K9AUpDhT7y6tX1IxAkSkdIEmIgWC5Pu2df4+xyWXarJfqlBeJ82biot
	/qETntfo01wm0AtqfJzDh/BkUpQw0dbWBSnAF6LytoNEggIGnUGmzvCidrEEsTCO6YlHfKIH
	cpz7iwgVZi4Ajtsky8v8P8P7sX0se/ce1L+qX/qN7TnXpcdVSfZpMnArTPkrmlJT4inBLhKx
	UeDMQmHe+BQvATa21fhcqi3BPIMwIalzLqVSIvRmKY6oYdCbKLM2TZ5HmyJepusl2Gi3ABEB
	AAG0J01hcnRpbiBXZWluZWx0IDxtYXJ0aW5AbGludXhsb3VuZ2UubmV0PokBWAQTAQoAQgIb
	IwYLCQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEWIQTu0BYCvL0ZbDi8mh+9SqBSj2PxfgUC
	W/RuFQUJEd/znAAKCRC9SqBSj2PxfpfDCACDx6BYz6cGMiweQ96lXi+ihx7RBaXsfPp2KxUo
	eHilrDPqknq62XJibCyNCJiYGNb+RUS5WfDUAqxdl4HuNxQMC/sYlbP4b7p9Y1Q9QiTP4f6M
	8+Uvpicin+9H/lye5hS/Gp2KUiVI/gzqW68WqMhARUYw00lVSlJHy+xHEGVuQ0vmeopjU81R
	0si4+HhMX2HtILTxoUcvm67AFKidTHYMJKwNyMHiLLvSK6wwiy+MXaiqrMVTwSIOQhLgLVcJ
	33GNJ2Emkgkhs6xcaiN8xTjxDmiU7b5lXW4JiAsd1rbKINajcA7DVlZ/evGfpN9FczyZ4W6F
	Rf21CxSwtqv2SQHBuQENBEv1rfkBCADJX6bbb5LsXjdxDeFgqo+XRUvW0bzuS3SYNo0fuktM
	5WYMCX7TzoF556QU8A7C7bDUkT4THBUzfaA8ZKIuneYW2WN1OI0zRMpmWVeZcUQpXncWWKCg
	LBNYtk9CCukPE0OpDFnbR+GhGd1KF/YyemYnzwW2f1NOtHjwT3iuYnzzZNlWoZAR2CRSD02B
	YU87Mr2CMXrgG/pdRiaD+yBUG9RxCUkIWJQ5dcvgrsg81vOTj6OCp/47Xk/457O0pUFtySKS
	jZkZN6S7YXl/t+8C9g7o3N58y/X95VVEw/G3KegUR2SwcLdok4HaxgOy5YHiC+qtGNZmDiQn
	NXN7WIN/oof7ABEBAAGJATwEGAEKACYCGwwWIQTu0BYCvL0ZbDi8mh+9SqBSj2PxfgUCW/Ru
	GAUJEd/znwAKCRC9SqBSj2PxfpzMCACH55MVYTVykq+CWj1WMKHex9iFg7M9DkWQCF/Zl+0v
	QmyRMEMZnFW8GdX/Qgd4QbZMUTOGevGxFPTe4p0PPKqKEDXXXxTTHQETE/Hl0jJvyu+MgTxG
	E9/KrWmsmQC7ogTFCHf0vvVY3UjWChOqRE19Buk4eYpMbuU1dYefLNcD15o4hGDhohYn3SJr
	q9eaoO6rpnNIrNodeG+1vZYG1B2jpEdU4v354ziGcibt5835IONuVdvuZMFQJ4Pn2yyC+qJe
	ekXwZ5f4JEt0lWD9YUxB2cU+xM9sbDcQ2b6+ypVFzMyfU0Q6LzYugAqajZ10gWKmeyjisgyq
	sv5UJTKaOB/t
Message-ID: <18347ad7-a671-582d-3c6e-db148de685c1@linuxlounge.net>
Date: Sat, 29 Jun 2019 15:23:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
In-Reply-To: <E0170D52-C181-4F0F-B5F8-F1801C2A8F5A@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Sun, 30 Jun 2019 16:06:11 +0000
Cc: netdev@vger.kernel.org
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
From: Martin Weinelt via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Martin Weinelt <martin@linuxlounge.net>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 6/29/19 3:11 PM, nikolay@cumulusnetworks.com wrote:
> On 29 June 2019 14:54:44 EEST, Martin Weinelt <martin@linuxlounge.net> wrote:
>> Hello,
>>
>> we've recently been experiencing memory leaks on our Linux-based
>> routers,
>> at least as far back as v4.19.16.
>>
>> After rebuilding with KASAN it found a use-after-free in 
>> br_multicast_rcv which I could reproduce on v5.2.0-rc6. 
>>
>> Please find the KASAN report below, I'm anot sure what else to provide
>> so
>> feel free to ask.
>>
>> Best,
>>  Martin
>>
>>
> 
> Hi Martin, 
> I'll look into this, are there any specific steps to reproduce it? 
> 
> Thanks, 
>    Nik

Hi Nik,

thanks for taking an interest. The setup is a public L2 mesh network
based on the batman-adv kmod. The bridges see 100 Mbps+ of traffic most
of the day and I unfortunately do not yet know what triggers this.


Best,
  Martin

> 
>> ==================================================================
>> BUG: KASAN: use-after-free in br_multicast_rcv+0x480c/0x4ad0 [bridge]
>> Read of size 2 at addr ffff8880421302b4 by task ksoftirqd/1/16
>>
>> CPU: 1 PID: 16 Comm: ksoftirqd/1 Tainted: G           OE     5.2.0-rc6+
>> #1
>> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.10.2-1
>> 04/01/2014
>> Call Trace:
>> dump_stack+0x71/0xab
>> print_address_description+0x6a/0x280
>> ? br_multicast_rcv+0x480c/0x4ad0 [bridge]
>> __kasan_report+0x152/0x1aa
>> ? br_multicast_rcv+0x480c/0x4ad0 [bridge]
>> ? br_multicast_rcv+0x480c/0x4ad0 [bridge]
>> kasan_report+0xe/0x20
>> br_multicast_rcv+0x480c/0x4ad0 [bridge]
>> ? br_multicast_disable_port+0x150/0x150 [bridge]
>> ? ktime_get_with_offset+0xb4/0x150
>> ? __kasan_kmalloc.constprop.6+0xa6/0xf0
>> ? __netif_receive_skb+0x1b0/0x1b0
>> ? br_fdb_update+0x10e/0x6e0 [bridge]
>> ? br_handle_frame_finish+0x3c6/0x11d0 [bridge]
>> br_handle_frame_finish+0x3c6/0x11d0 [bridge]
>> ? br_pass_frame_up+0x3a0/0x3a0 [bridge]
>> ? virtnet_probe+0x1c80/0x1c80 [virtio_net]
>> br_handle_frame+0x731/0xd90 [bridge]
>> ? select_idle_sibling+0x25/0x7d0
>> ? br_handle_frame_finish+0x11d0/0x11d0 [bridge]
>> __netif_receive_skb_core+0xced/0x2d70
>> ? virtqueue_get_buf_ctx+0x230/0x1130 [virtio_ring]
>> ? do_xdp_generic+0x20/0x20
>> ? virtqueue_napi_complete+0x39/0x70 [virtio_net]
>> ? virtnet_poll+0x94d/0xc78 [virtio_net]
>> ? receive_buf+0x5120/0x5120 [virtio_net]
>> ? __netif_receive_skb_one_core+0x97/0x1d0
>> __netif_receive_skb_one_core+0x97/0x1d0
>> ? __netif_receive_skb_core+0x2d70/0x2d70
>> ? _raw_write_trylock+0x100/0x100
>> ? __queue_work+0x41e/0xbe0
>> process_backlog+0x19c/0x650
>> ? _raw_read_lock_irq+0x40/0x40
>> net_rx_action+0x71e/0xbc0
>> ? __switch_to_asm+0x40/0x70
>> ? napi_complete_done+0x360/0x360
>> ? __switch_to_asm+0x34/0x70
>> ? __switch_to_asm+0x40/0x70
>> ? __schedule+0x85e/0x14d0
>> __do_softirq+0x1db/0x5f9
>> ? takeover_tasklets+0x5f0/0x5f0
>> run_ksoftirqd+0x26/0x40
>> smpboot_thread_fn+0x443/0x680
>> ? sort_range+0x20/0x20
>> ? schedule+0x94/0x210
>> ? __kthread_parkme+0x78/0xf0
>> ? sort_range+0x20/0x20
>> kthread+0x2ae/0x3a0
>> ? kthread_create_worker_on_cpu+0xc0/0xc0
>> ret_from_fork+0x35/0x40
>>
>> The buggy address belongs to the page:
>> page:ffffea0001084c00 refcount:0 mapcount:-128 mapping:0000000000000000
>> index:0x0
>> flags: 0xffffc000000000()
>> raw: 00ffffc000000000 ffffea0000cfca08 ffffea0001098608
>> 0000000000000000
>> raw: 0000000000000000 0000000000000003 00000000ffffff7f
>> 0000000000000000
>> page dumped because: kasan: bad access detected
>>
>> Memory state around the buggy address:
>> ffff888042130180: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>> ffff888042130200: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>>> ffff888042130280: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>>                                     ^
>> ffff888042130300: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>> ffff888042130380: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff
>> ==================================================================
>> Disabling lock debugging due to kernel taint
> 
> 
