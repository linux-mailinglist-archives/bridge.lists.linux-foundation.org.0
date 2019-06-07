Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F03538D0B
	for <lists.bridge@lfdr.de>; Fri,  7 Jun 2019 16:30:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 759F11310;
	Fri,  7 Jun 2019 14:29:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A0A6D12EB
	for <bridge@lists.linux-foundation.org>;
	Fri,  7 Jun 2019 14:29:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.us.es (mail.us.es [193.147.175.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8319A854
	for <bridge@lists.linux-foundation.org>;
	Fri,  7 Jun 2019 14:29:05 +0000 (UTC)
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id D7A47BAE9D
	for <bridge@lists.linux-foundation.org>;
	Fri,  7 Jun 2019 16:29:01 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id C8DA8DA718
	for <bridge@lists.linux-foundation.org>;
	Fri,  7 Jun 2019 16:29:01 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id B5814DA713; Fri,  7 Jun 2019 16:29:01 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 433E5DA701;
	Fri,  7 Jun 2019 16:28:59 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
	by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int); 
	Fri, 07 Jun 2019 16:28:59 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 0386D4265A2F;
	Fri,  7 Jun 2019 16:28:58 +0200 (CEST)
Date: Fri, 7 Jun 2019 16:28:58 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Christian Brauner <christian@brauner.io>
Message-ID: <20190607142858.vgkljqohn34rxhe2@salvia>
References: <20190606114142.15972-1-christian@brauner.io>
	<20190606114142.15972-2-christian@brauner.io>
	<20190606081440.61ea1c62@hermes.lan>
	<20190606151937.mdpalfk7urvv74ub@brauner.io>
	<20190606163035.x7rvqdwubxiai5t6@salvia>
	<20190607132516.q3zwmzrynvqo7mzn@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190607132516.q3zwmzrynvqo7mzn@brauner.io>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: ueberall@themenzentrisch.de, vapier@chromium.org, richardrose@google.com,
	bhthompson@google.com, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, fw@strlen.de,
	linux-kernel@vger.kernel.org, joelhockey@chromium.org,
	tyhicks@canonical.com, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, kadlec@blackhole.kfki.hu,
	smbarber@chromium.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH RESEND net-next 1/2] br_netfilter: add struct
	netns_brnf
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

On Fri, Jun 07, 2019 at 03:25:16PM +0200, Christian Brauner wrote:
> On Thu, Jun 06, 2019 at 06:30:35PM +0200, Pablo Neira Ayuso wrote:
> > On Thu, Jun 06, 2019 at 05:19:39PM +0200, Christian Brauner wrote:
> > > On Thu, Jun 06, 2019 at 08:14:40AM -0700, Stephen Hemminger wrote:
> > > > On Thu,  6 Jun 2019 13:41:41 +0200
> > > > Christian Brauner <christian@brauner.io> wrote:
> > > > 
> > > > > +struct netns_brnf {
> > > > > +#ifdef CONFIG_SYSCTL
> > > > > +	struct ctl_table_header *ctl_hdr;
> > > > > +#endif
> > > > > +
> > > > > +	/* default value is 1 */
> > > > > +	int call_iptables;
> > > > > +	int call_ip6tables;
> > > > > +	int call_arptables;
> > > > > +
> > > > > +	/* default value is 0 */
> > > > > +	int filter_vlan_tagged;
> > > > > +	int filter_pppoe_tagged;
> > > > > +	int pass_vlan_indev;
> > > > > +};
> > > > 
> > > > Do you really need to waste four bytes for each
> > > > flag value. If you use a u8 that would work just as well.
> > > 
> > > I think we had discussed something like this but the problem why we
> > > can't do this stems from how the sysctl-table stuff is implemented.
> > > I distinctly remember that it couldn't be done with a flag due to that.
> > 
> > Could you define a pernet_operations object? I mean, define the id and size
> > fields, then pass it to register_pernet_subsys() for registration.
> > Similar to what we do in net/ipv4/netfilter/ipt_CLUSTER.c, see
> > clusterip_net_ops and clusterip_pernet() for instance.
> 
> Hm, I don't think that would work. The sysctls for br_netfilter are
> located in /proc/sys/net/bridge under /proc/sys/net which is tightly
> integrated with the sysctls infrastructure for all of net/ and all the
> folder underneath it including "core", "ipv4" and "ipv6".
> I don't think creating and managing files manually in /proc/sys/net is
> going to fly. It also doesn't seem very wise from a consistency and
> complexity pov. I'm also not sure if this would work at all wrt to file
> creation and reference counting if there are two different ways of
> managing them in the same subfolder...
> (clusterip creates files manually underneath /proc/net which probably is
> the reason why it gets away with it.)

br_netfilter is now a module, and br_netfilter_hooks.c is part of it
IIRC, this file registers these sysctl entries from the module __init
path.

It would be a matter of adding a new .init callback to the existing
brnf_net_ops object in br_netfilter_hooks.c. Then, call
register_net_sysctl() from this .init callback to register the sysctl
entries per netns.

There is already a brnf_net area that you can reuse for this purpose,
to place these pernetns flags...

struct brnf_net {
        bool enabled;
};

which is going to be glad to have more fields (under the #ifdef
CONFIG_SYSCTL) there.
