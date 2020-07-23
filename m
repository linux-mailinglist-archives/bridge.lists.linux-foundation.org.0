Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B76822B2E6
	for <lists.bridge@lfdr.de>; Thu, 23 Jul 2020 17:49:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 020BB854E3;
	Thu, 23 Jul 2020 15:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pOYJu9BmOFMK; Thu, 23 Jul 2020 15:49:26 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13FC5855F1;
	Thu, 23 Jul 2020 15:49:26 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id EB59FC004E;
	Thu, 23 Jul 2020 15:49:25 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92B9BC004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 15:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88A4788276
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 15:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ya7u5Aq2pNnO for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 15:49:23 +0000 (UTC)
X-Greylist: delayed 00:08:32 by SQLgrey-1.7.6
Received: from a3.inai.de (a3.inai.de [88.198.85.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 35B9988263
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 15:49:23 +0000 (UTC)
Received: by a3.inai.de (Postfix, from userid 25121)
 id 049975872C746; Thu, 23 Jul 2020 17:40:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by a3.inai.de (Postfix) with ESMTP id 038D360C4009F;
 Thu, 23 Jul 2020 17:40:49 +0200 (CEST)
Date: Thu, 23 Jul 2020 17:40:49 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: Christoph Hellwig <hch@lst.de>
In-Reply-To: <20200723060908.50081-5-hch@lst.de>
Message-ID: <nycvar.YFH.7.77.849.2007231725090.11202@n3.vanv.qr>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-5-hch@lst.de>
User-Agent: Alpine 2.22 (LSU 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org,
 Netfilter Developer Mailing List <netfilter-devel@vger.kernel.org>,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH 04/26] net: add a new sockptr_t type
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


On Thursday 2020-07-23 08:08, Christoph Hellwig wrote:
>+typedef struct {
>+	union {
>+		void		*kernel;
>+		void __user	*user;
>+	};
>+	bool		is_kernel : 1;
>+} sockptr_t;
>+
>+static inline bool sockptr_is_null(sockptr_t sockptr)
>+{
>+	return !sockptr.user && !sockptr.kernel;
>+}

"""If the member used to access the contents of a union is not the same as the
member last used to store a value, the object representation of the value that
was stored is reinterpreted as an object representation of the new type (this
is known as type punning). If the size of the new type is larger than the size
of the last-written type, the contents of the excess bytes are unspecified (and
may be a trap representation)"""

As I am not too versed with the consequences of trap representations, I will
just point out that a future revision of the C standard may introduce (proposal
N2362) stronger C++-like requirements; as for union, that would imply a simple:

"""It's undefined behavior to read from the member of the union that wasn't
most recently written.""" [cppreference.com]


So, in the spirit of copy_from/to_sockptr, the is_null function should read

{
	return sockptr.is_kernel ? !sockptr.user : !sockptr.kernel;
}

