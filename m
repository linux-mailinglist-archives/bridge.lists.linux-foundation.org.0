Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB3984FE9
	for <lists.bridge@lfdr.de>; Wed,  7 Aug 2019 17:29:58 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E0475E97;
	Wed,  7 Aug 2019 15:29:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EBFF7E6C
	for <bridge@lists.linux-foundation.org>;
	Wed,  7 Aug 2019 15:29:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8A309823
	for <bridge@lists.linux-foundation.org>;
	Wed,  7 Aug 2019 15:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
	Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oTLsonCa2JJCZquZIr02tCIa6cKQIoCJzf/6u+G0eLM=;
	b=VpMFLl0A1PNebanbYxVShplQ6
	owR9HSB6WQhXM7FtQ1KBgyZTkRk+yHQ86qtMqsWD7hr1P1GIddyL7uHdtmbhh9J/rne41GOgTIuXb
	QNcLmNfEz83irO95WBGPJwNxEL7VeTbBmn8rB2gok7N3zhLJpu93XP3shL9iRYPuvF7r8XEQhdYyT
	UIVMdSeS457+iMuygc27wzDX/39tdKnOExx0nSZcn+NNwbkkzcKUHC5Huh98ImRDvsOxLsyuqkLd9
	YhcgjlmrsTueF3dyb9g/ryQnaf9HSD4mYJu4PpPdV5c+JZX5myz+xgOkjcpg8KV0NVPnHQIdrXq4K
	oqNJkdL/g==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
	helo=[192.168.1.17])
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNsn-0003gV-1L; Wed, 07 Aug 2019 15:29:45 +0000
To: Stephen Rothwell <sfr@canb.auug.org.au>,
	Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20190807183606.372ca1a4@canb.auug.org.au>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f54391d9-6259-d08b-8b5f-c844093071d8@infradead.org>
Date: Wed, 7 Aug 2019 08:29:44 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190807183606.372ca1a4@canb.auug.org.au>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	bridge@lists.linux-foundation.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [Bridge] linux-next: Tree for Aug 7
 (net/bridge/netfilter/nf_conntrack_bridge.c)
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

On 8/7/19 1:36 AM, Stephen Rothwell wrote:
> Hi all,
> 
> Changes since 20190806:
> 

on i386:
when CONFIG_NF_TABLES is not set/enabled:

  CC      net/bridge/netfilter/nf_conntrack_bridge.o
In file included from ../net/bridge/netfilter/nf_conntrack_bridge.c:21:0:
../include/net/netfilter/nf_tables.h: In function ‘nft_gencursor_next’:
../include/net/netfilter/nf_tables.h:1224:14: error: ‘const struct net’ has no member named ‘nft’; did you mean ‘nf’?
  return net->nft.gencursor + 1 == 1 ? 1 : 0;
              ^~~
              nf
In file included from ../include/linux/export.h:45:0,
                 from ../include/linux/linkage.h:7,
                 from ../include/linux/kernel.h:8,
                 from ../include/linux/skbuff.h:13,
                 from ../include/linux/ip.h:16,
                 from ../net/bridge/netfilter/nf_conntrack_bridge.c:3:
../include/net/netfilter/nf_tables.h: In function ‘nft_genmask_cur’:
../include/net/netfilter/nf_tables.h:1235:29: error: ‘const struct net’ has no member named ‘nft’; did you mean ‘nf’?
  return 1 << READ_ONCE(net->nft.gencursor);
                             ^
../include/linux/compiler.h:261:17: note: in definition of macro ‘__READ_ONCE’
  union { typeof(x) __val; char __c[1]; } __u;   \
                 ^
../include/net/netfilter/nf_tables.h:1235:14: note: in expansion of macro ‘READ_ONCE’
  return 1 << READ_ONCE(net->nft.gencursor);
              ^~~~~~~~~
../include/net/netfilter/nf_tables.h:1235:29: error: ‘const struct net’ has no member named ‘nft’; did you mean ‘nf’?
  return 1 << READ_ONCE(net->nft.gencursor);
                             ^
../include/linux/compiler.h:263:22: note: in definition of macro ‘__READ_ONCE’
   __read_once_size(&(x), __u.__c, sizeof(x));  \
                      ^
../include/net/netfilter/nf_tables.h:1235:14: note: in expansion of macro ‘READ_ONCE’
  return 1 << READ_ONCE(net->nft.gencursor);
              ^~~~~~~~~
../include/net/netfilter/nf_tables.h:1235:29: error: ‘const struct net’ has no member named ‘nft’; did you mean ‘nf’?
  return 1 << READ_ONCE(net->nft.gencursor);
                             ^
../include/linux/compiler.h:263:42: note: in definition of macro ‘__READ_ONCE’
   __read_once_size(&(x), __u.__c, sizeof(x));  \
                                          ^
../include/net/netfilter/nf_tables.h:1235:14: note: in expansion of macro ‘READ_ONCE’
  return 1 << READ_ONCE(net->nft.gencursor);
              ^~~~~~~~~
../include/net/netfilter/nf_tables.h:1235:29: error: ‘const struct net’ has no member named ‘nft’; did you mean ‘nf’?
  return 1 << READ_ONCE(net->nft.gencursor);
                             ^
../include/linux/compiler.h:265:30: note: in definition of macro ‘__READ_ONCE’
   __read_once_size_nocheck(&(x), __u.__c, sizeof(x)); \
                              ^
../include/net/netfilter/nf_tables.h:1235:14: note: in expansion of macro ‘READ_ONCE’
  return 1 << READ_ONCE(net->nft.gencursor);
              ^~~~~~~~~
../include/net/netfilter/nf_tables.h:1235:29: error: ‘const struct net’ has no member named ‘nft’; did you mean ‘nf’?
  return 1 << READ_ONCE(net->nft.gencursor);
                             ^
../include/linux/compiler.h:265:50: note: in definition of macro ‘__READ_ONCE’
   __read_once_size_nocheck(&(x), __u.__c, sizeof(x)); \
                                                  ^
../include/net/netfilter/nf_tables.h:1235:14: note: in expansion of macro ‘READ_ONCE’
  return 1 << READ_ONCE(net->nft.gencursor);
              ^~~~~~~~~
make[4]: *** [../scripts/Makefile.build:273: net/bridge/netfilter/nf_conntrack_bridge.o] Error 1



-- 
~Randy
