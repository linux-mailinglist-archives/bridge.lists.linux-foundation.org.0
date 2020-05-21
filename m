Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 222461DD0AC
	for <lists.bridge@lfdr.de>; Thu, 21 May 2020 17:01:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C47A2875FB;
	Thu, 21 May 2020 15:01:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mqt7zn3_aAyd; Thu, 21 May 2020 15:01:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD7E1875C8;
	Thu, 21 May 2020 15:01:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A2F51C0176;
	Thu, 21 May 2020 15:01:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 92523C0176
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 15:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8ED2788683
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 15:01:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EP+PaRyoKfMC for <bridge@lists.linux-foundation.org>;
 Thu, 21 May 2020 15:01:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1180488682
 for <bridge@lists.linux-foundation.org>; Thu, 21 May 2020 15:01:42 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04LEfPAi102177;
 Thu, 21 May 2020 15:01:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=zAw1u07pbRDu+xvWXDwgv7P7rAeqqEG3qCROxNYz4Qw=;
 b=WcR2EviD0S8hW4M2rvwjYzJmQw4FXWXPBUrrFqEw1sUnEyiMbxupFvOgeiaqsO35y4jQ
 CPzN4RPWZ6CN7vjd6wBYwrtQUBjUMj9m0EAj6CSAN7hZzaajn1ZSnKnNebi9STjS87+w
 JKL62APs7QzHF9pg28671gwh0ONBuSPHok4+1ywoLlXr3HhK4IfhyKSbOVhikEcTfkxF
 9stgAB1nQtebaQ/IRHWLcG1ceA7kwj4KhpyGXBYsO9ItnyKUCR3Cg7SuHMkRyzT2Y+Ua
 jnI2GFQJ+lm1iENMft9tc6tPnnqNuUZR+w0R92TuT1D5sfFSWNj5/xpNnLmioaAkH55q Bw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 3127krh0yp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 21 May 2020 15:01:33 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04LEXEmm064466;
 Thu, 21 May 2020 14:59:32 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 312t3bdb1a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 21 May 2020 14:59:32 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04LExUkO015814;
 Thu, 21 May 2020 14:59:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 21 May 2020 07:59:29 -0700
Date: Thu, 21 May 2020 17:59:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Dmitry Vyukov <dvyukov@google.com>
Message-ID: <20200521145921.GJ30374@kadam>
References: <0000000000007b211005a6187dc9@google.com>
 <20200521140803.GI30374@kadam>
 <CACT4Y+bzz-h5vNGH0rDMUiuGZVX01oXawXAPbjtnNHb1KVWSvg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACT4Y+bzz-h5vNGH0rDMUiuGZVX01oXawXAPbjtnNHb1KVWSvg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9627
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 mlxlogscore=944
 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005210110
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9627
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 spamscore=0
 bulkscore=0 clxscore=1015 priorityscore=1501 mlxscore=0 impostorscore=0
 suspectscore=0 mlxlogscore=982 malwarescore=0 cotscore=-2147483648
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005210110
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 netdev <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, horatiu.vultur@microchip.com,
 syzbot <syzbot+9c6f0f1f8e32223df9a4@syzkaller.appspotmail.com>,
 syzkaller <syzkaller@googlegroups.com>, kuba@kernel.org,
 David Miller <davem@davemloft.net>
Subject: Re: [Bridge] KASAN: slab-out-of-bounds Read in br_mrp_parse
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

On Thu, May 21, 2020 at 04:28:05PM +0200, 'Dmitry Vyukov' via syzkaller-bugs wrote:
> On Thu, May 21, 2020 at 4:08 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Wed, May 20, 2020 at 11:23:18AM -0700, syzbot wrote:
> > > Hello,
> > >
> > > syzbot found the following crash on:
> > >
> > > HEAD commit:    dda18a5c selftests/bpf: Convert bpf_iter_test_kern{3, 4}.c..
> > > git tree:       bpf-next
> >                   ^^^^^^^^
> >
> > I can figure out what this is from reading Next/Trees but it would be
> > more useful if it were easier to script.
> 
> Hi Dan,
> 
> Is there a canonical way to refer to a particular branch of a particular tree?
> >From what I observed on mailing lists people seem to say "linux-next"
> or "upstream tree" and that seems to mean specific things that
> everybody understands.

git://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git#master

I kind of hate that format because you have to replace the # with a
space, but it's what everyone uses.

regards,
dan carpenter

